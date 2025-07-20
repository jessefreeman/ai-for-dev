---
title: "Real-World Coding Scenarios with Local LLMs"
parent: "Models For Coding"
nav_order: 3
---
---
title: "Real-World Coding Scenarios"
parent: "Models For Coding"
nav_order: 3
---

# Real-World Coding Scenarios with Local LLMs

This section provides practical, hands-on examples of using local Large Language Models for common development tasks. Each scenario includes the problem context, example prompts, and actual code outputs to demonstrate real-world applications.

## What You'll Learn

- Practical prompting strategies for coding tasks
- Before/after code examples showing LLM improvements
- Integration patterns with popular development tools
- Common pitfalls and how to avoid them
- Performance optimization techniques for coding workflows

---

## Scenario 1: API Integration and Error Handling

### The Challenge

You need to integrate with a third-party REST API but want robust error handling and proper structure.

### Before: Basic API Call

```python
import requests

def get_user_data(user_id):
    response = requests.get(f"https://api.example.com/users/{user_id}")
    return response.json()

# Basic usage - prone to errors
user = get_user_data(123)
print(user['name'])
```

### LLM Prompt

```
Improve this Python function for calling a REST API. Add proper error handling, logging, retry logic, and type hints. Make it production-ready with comprehensive exception handling.

[paste the basic code above]
```

### After: Production-Ready API Client

```python
import requests
import logging
import time
from typing import Optional, Dict, Any
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry

logger = logging.getLogger(__name__)

class APIClient:
    def __init__(self, base_url: str, timeout: int = 30):
        self.base_url = base_url.rstrip('/')
        self.timeout = timeout
        self.session = self._create_session()

    def _create_session(self) -> requests.Session:
        """Create a session with retry strategy."""
        session = requests.Session()

        retry_strategy = Retry(
            total=3,
            backoff_factor=1,
            status_forcelist=[429, 500, 502, 503, 504],
        )

        adapter = HTTPAdapter(max_retries=retry_strategy)
        session.mount("http://", adapter)
        session.mount("https://", adapter)

        return session

    def get_user_data(self, user_id: int) -> Optional[Dict[str, Any]]:
        """
        Fetch user data from the API with comprehensive error handling.

        Args:
            user_id: The ID of the user to fetch

        Returns:
            User data dictionary or None if user not found

        Raises:
            requests.RequestException: For network-related errors
            ValueError: For invalid user_id
        """
        if not isinstance(user_id, int) or user_id <= 0:
            raise ValueError(f"Invalid user_id: {user_id}")

        url = f"{self.base_url}/users/{user_id}"

        try:
            logger.info(f"Fetching user data for ID: {user_id}")

            response = self.session.get(
                url,
                timeout=self.timeout,
                headers={
                    'Accept': 'application/json',
                    'User-Agent': 'MyApp/1.0'
                }
            )

            # Handle different status codes
            if response.status_code == 200:
                data = response.json()
                logger.info(f"Successfully fetched user {user_id}")
                return data

            elif response.status_code == 404:
                logger.warning(f"User {user_id} not found")
                return None

            elif response.status_code == 429:
                logger.warning("Rate limit exceeded")
                raise requests.RequestException("Rate limit exceeded")

            else:
                response.raise_for_status()

        except requests.Timeout:
            logger.error(f"Timeout while fetching user {user_id}")
            raise

        except requests.ConnectionError:
            logger.error(f"Connection error while fetching user {user_id}")
            raise

        except requests.RequestException as e:
            logger.error(f"API request failed for user {user_id}: {e}")
            raise

        except ValueError as e:
            logger.error(f"Invalid JSON response for user {user_id}: {e}")
            raise

# Usage example with proper error handling
def main():
    client = APIClient("https://api.example.com")

    try:
        user_data = client.get_user_data(123)
        if user_data:
            print(f"User: {user_data.get('name', 'Unknown')}")
            print(f"Email: {user_data.get('email', 'N/A')}")
        else:
            print("User not found")

    except ValueError as e:
        print(f"Invalid input: {e}")
    except requests.RequestException as e:
        print(f"API error: {e}")
    except Exception as e:
        print(f"Unexpected error: {e}")

if __name__ == "__main__":
    main()
```

### Key Improvements

- **Comprehensive error handling** for different HTTP status codes
- **Retry logic** for transient failures
- **Proper logging** for debugging and monitoring
- **Type hints** for better code documentation
- **Session reuse** for better performance
- **Timeout configuration** to prevent hanging requests
- **Input validation** to catch errors early

---

## Scenario 2: Database Query Optimization

### The Challenge

You have a slow database query that needs optimization and want to add proper connection handling.

### Before: Basic Database Query

```python
import sqlite3

def get_user_orders(user_id):
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM orders WHERE user_id = ?", (user_id,))
    results = cursor.fetchall()
    conn.close()
    return results
```

### LLM Prompt

```
Optimize this database function for better performance and add proper connection management. Include connection pooling, prepared statements, and make it work with both SQLite and PostgreSQL. Add proper error handling and logging.

[paste the basic code above]
```

### After: Optimized Database Handler

```python
import sqlite3
import psycopg2
import logging
from contextlib import contextmanager
from typing import List, Dict, Any, Optional, Union
from dataclasses import dataclass
from datetime import datetime

logger = logging.getLogger(__name__)

@dataclass
class DatabaseConfig:
    """Database configuration settings."""
    db_type: str  # 'sqlite' or 'postgresql'
    host: Optional[str] = None
    port: Optional[int] = None
    database: str = 'database.db'
    username: Optional[str] = None
    password: Optional[str] = None
    max_connections: int = 20

class DatabaseManager:
    def __init__(self, config: DatabaseConfig):
        self.config = config
        self._connection_pool = []
        self._pool_size = 0

    @contextmanager
    def get_connection(self):
        """Context manager for database connections."""
        conn = None
        try:
            conn = self._get_connection()
            yield conn
        except Exception as e:
            if conn:
                conn.rollback()
            logger.error(f"Database error: {e}")
            raise
        finally:
            if conn:
                self._return_connection(conn)

    def _get_connection(self):
        """Get a connection from the pool or create a new one."""
        if self._connection_pool:
            return self._connection_pool.pop()

        if self.config.db_type == 'sqlite':
            conn = sqlite3.connect(
                self.config.database,
                check_same_thread=False,
                timeout=30.0
            )
            conn.row_factory = sqlite3.Row  # Enable dict-like access

        elif self.config.db_type == 'postgresql':
            conn = psycopg2.connect(
                host=self.config.host,
                port=self.config.port,
                database=self.config.database,
                user=self.config.username,
                password=self.config.password,
                connect_timeout=30
            )

        else:
            raise ValueError(f"Unsupported database type: {self.config.db_type}")

        self._pool_size += 1
        return conn

    def _return_connection(self, conn):
        """Return a connection to the pool."""
        if len(self._connection_pool) < self.config.max_connections:
            self._connection_pool.append(conn)
        else:
            conn.close()
            self._pool_size -= 1

class OrderRepository:
    def __init__(self, db_manager: DatabaseManager):
        self.db = db_manager

    def get_user_orders_optimized(
        self,
        user_id: int,
        limit: int = 100,
        include_items: bool = False
    ) -> List[Dict[str, Any]]:
        """
        Get user orders with optimized query and optional item details.

        Args:
            user_id: The ID of the user
            limit: Maximum number of orders to return
            include_items: Whether to include order items

        Returns:
            List of order dictionaries
        """
        if not isinstance(user_id, int) or user_id <= 0:
            raise ValueError(f"Invalid user_id: {user_id}")

        if include_items:
            # Optimized query with JOIN to get orders and items in one query
            query = """
                SELECT
                    o.id as order_id,
                    o.created_at,
                    o.status,
                    o.total_amount,
                    oi.id as item_id,
                    oi.product_name,
                    oi.quantity,
                    oi.price
                FROM orders o
                LEFT JOIN order_items oi ON o.id = oi.order_id
                WHERE o.user_id = ?
                ORDER BY o.created_at DESC, oi.id
                LIMIT ?
            """
            params = (user_id, limit)
        else:
            # Simple query for orders only
            query = """
                SELECT
                    id as order_id,
                    created_at,
                    status,
                    total_amount
                FROM orders
                WHERE user_id = ?
                ORDER BY created_at DESC
                LIMIT ?
            """
            params = (user_id, limit)

        try:
            with self.db.get_connection() as conn:
                cursor = conn.cursor()

                logger.debug(f"Executing query for user {user_id}")
                start_time = datetime.now()

                cursor.execute(query, params)
                rows = cursor.fetchall()

                execution_time = (datetime.now() - start_time).total_seconds()
                logger.info(f"Query completed in {execution_time:.3f}s, returned {len(rows)} rows")

                if include_items:
                    return self._group_orders_with_items(rows)
                else:
                    return [dict(row) for row in rows]

        except Exception as e:
            logger.error(f"Failed to fetch orders for user {user_id}: {e}")
            raise

    def _group_orders_with_items(self, rows) -> List[Dict[str, Any]]:
        """Group order rows with their items."""
        orders = {}

        for row in rows:
            order_id = row['order_id']

            if order_id not in orders:
                orders[order_id] = {
                    'order_id': order_id,
                    'created_at': row['created_at'],
                    'status': row['status'],
                    'total_amount': row['total_amount'],
                    'items': []
                }

            # Add item if it exists
            if row['item_id']:
                orders[order_id]['items'].append({
                    'item_id': row['item_id'],
                    'product_name': row['product_name'],
                    'quantity': row['quantity'],
                    'price': row['price']
                })

        return list(orders.values())

    def get_order_summary(self, user_id: int) -> Dict[str, Any]:
        """Get a summary of user's order statistics."""
        query = """
            SELECT
                COUNT(*) as total_orders,
                COALESCE(SUM(total_amount), 0) as total_spent,
                COALESCE(AVG(total_amount), 0) as average_order_value,
                MAX(created_at) as last_order_date
            FROM orders
            WHERE user_id = ?
        """

        try:
            with self.db.get_connection() as conn:
                cursor = conn.cursor()
                cursor.execute(query, (user_id,))
                row = cursor.fetchone()

                return dict(row) if row else {
                    'total_orders': 0,
                    'total_spent': 0,
                    'average_order_value': 0,
                    'last_order_date': None
                }

        except Exception as e:
            logger.error(f"Failed to fetch order summary for user {user_id}: {e}")
            raise

# Usage example
def main():
    # Configuration
    config = DatabaseConfig(
        db_type='sqlite',
        database='ecommerce.db',
        max_connections=10
    )

    # Initialize components
    db_manager = DatabaseManager(config)
    order_repo = OrderRepository(db_manager)

    try:
        # Get recent orders
        orders = order_repo.get_user_orders_optimized(
            user_id=123,
            limit=50,
            include_items=True
        )

        print(f"Found {len(orders)} orders")
        for order in orders[:5]:  # Show first 5
            print(f"Order {order['order_id']}: ${order['total_amount']}")
            print(f"  Items: {len(order['items'])}")

        # Get summary statistics
        summary = order_repo.get_order_summary(123)
        print(f"\nOrder Summary:")
        print(f"  Total Orders: {summary['total_orders']}")
        print(f"  Total Spent: ${summary['total_spent']:.2f}")
        print(f"  Average Order: ${summary['average_order_value']:.2f}")

    except Exception as e:
        logger.error(f"Application error: {e}")

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    main()
```

### Key Improvements

- **Connection pooling** for better performance
- **Optimized queries** with JOINs to reduce database roundtrips
- **Support for multiple databases** (SQLite and PostgreSQL)
- **Proper transaction handling** with context managers
- **Query performance monitoring** with timing logs
- **Flexible result formatting** with optional related data
- **Summary statistics** for dashboard-style reporting

---

## Scenario 3: Code Review and Refactoring

### The Challenge

You have legacy code that needs modernization and want to identify potential issues.

### Before: Legacy JavaScript Function

```javascript
function processUserData(users) {
  var result = [];
  for (var i = 0; i < users.length; i++) {
    if (users[i].age >= 18) {
      var userData = {
        name: users[i].firstName + " " + users[i].lastName,
        email: users[i].email,
        isAdult: true,
      };
      result.push(userData);
    }
  }
  return result;
}
```

### LLM Prompt

```
Review this JavaScript code and modernize it. Identify potential issues, suggest improvements for performance and readability, add proper error handling, and convert to modern ES6+ syntax with TypeScript types.

[paste the legacy code above]
```

### After: Modern TypeScript Implementation

```typescript
interface User {
  firstName: string;
  lastName: string;
  email: string;
  age: number;
  id?: string | number;
}

interface ProcessedUser {
  name: string;
  email: string;
  isAdult: boolean;
  id?: string | number;
}

interface ProcessingOptions {
  minimumAge?: number;
  includeId?: boolean;
  validateEmail?: boolean;
}

class UserProcessor {
  private static readonly DEFAULT_MINIMUM_AGE = 18;
  private static readonly EMAIL_REGEX = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

  /**
   * Process user data with filtering and validation
   * @param users - Array of user objects to process
   * @param options - Processing configuration options
   * @returns Promise<ProcessedUser[]> - Processed user data
   * @throws Error when validation fails
   */
  static async processUserData(
    users: User[],
    options: ProcessingOptions = {}
  ): Promise<ProcessedUser[]> {
    // Input validation
    if (!Array.isArray(users)) {
      throw new Error("Users must be an array");
    }

    if (users.length === 0) {
      return [];
    }

    const {
      minimumAge = UserProcessor.DEFAULT_MINIMUM_AGE,
      includeId = false,
      validateEmail = true,
    } = options;

    try {
      // Use functional programming approach for better readability
      const processedUsers = users
        .filter((user) => UserProcessor.isValidUser(user))
        .filter((user) => user.age >= minimumAge)
        .filter(
          (user) => !validateEmail || UserProcessor.isValidEmail(user.email)
        )
        .map((user) => UserProcessor.transformUser(user, includeId));

      console.log(
        `Processed ${processedUsers.length} out of ${users.length} users`
      );

      return processedUsers;
    } catch (error) {
      console.error("Error processing user data:", error);
      throw new Error(`Failed to process user data: ${error.message}`);
    }
  }

  /**
   * Validate that a user object has required properties
   */
  private static isValidUser(user: any): user is User {
    if (!user || typeof user !== "object") {
      console.warn("Invalid user object:", user);
      return false;
    }

    const requiredFields = ["firstName", "lastName", "email", "age"];
    const missingFields = requiredFields.filter(
      (field) => user[field] === undefined || user[field] === null
    );

    if (missingFields.length > 0) {
      console.warn(
        `User missing required fields: ${missingFields.join(", ")}`,
        user
      );
      return false;
    }

    if (typeof user.age !== "number" || user.age < 0 || user.age > 150) {
      console.warn("Invalid age for user:", user);
      return false;
    }

    return true;
  }

  /**
   * Validate email format
   */
  private static isValidEmail(email: string): boolean {
    if (typeof email !== "string") {
      return false;
    }

    return UserProcessor.EMAIL_REGEX.test(email.trim());
  }

  /**
   * Transform a user object to the processed format
   */
  private static transformUser(user: User, includeId: boolean): ProcessedUser {
    const processedUser: ProcessedUser = {
      name: `${user.firstName.trim()} ${user.lastName.trim()}`,
      email: user.email.toLowerCase().trim(),
      isAdult: user.age >= UserProcessor.DEFAULT_MINIMUM_AGE,
    };

    if (includeId && user.id !== undefined) {
      processedUser.id = user.id;
    }

    return processedUser;
  }

  /**
   * Batch process users in chunks for better memory management
   */
  static async processUserDataInBatches(
    users: User[],
    batchSize: number = 1000,
    options: ProcessingOptions = {}
  ): Promise<ProcessedUser[]> {
    if (users.length <= batchSize) {
      return UserProcessor.processUserData(users, options);
    }

    const results: ProcessedUser[] = [];

    for (let i = 0; i < users.length; i += batchSize) {
      const batch = users.slice(i, i + batchSize);
      const batchResults = await UserProcessor.processUserData(batch, options);
      results.push(...batchResults);

      // Add small delay to prevent blocking the event loop
      await new Promise((resolve) => setTimeout(resolve, 1));
    }

    return results;
  }
}

// Usage examples
async function example() {
  const users: User[] = [
    { firstName: "John", lastName: "Doe", email: "john@example.com", age: 25 },
    {
      firstName: "Jane",
      lastName: "Smith",
      email: "jane@example.com",
      age: 17,
    },
    { firstName: "Bob", lastName: "Johnson", email: "invalid-email", age: 30 },
    { firstName: "", lastName: "Brown", email: "brown@example.com", age: 45 },
  ];

  try {
    // Basic processing
    const adults = await UserProcessor.processUserData(users);
    console.log("Adult users:", adults);

    // Custom processing with options
    const customResults = await UserProcessor.processUserData(users, {
      minimumAge: 21,
      includeId: true,
      validateEmail: true,
    });
    console.log("Custom filtered users:", customResults);

    // Batch processing for large datasets
    const batchResults = await UserProcessor.processUserDataInBatches(
      users,
      2, // Small batch size for demo
      { minimumAge: 18 }
    );
    console.log("Batch processed users:", batchResults);
  } catch (error) {
    console.error("Processing failed:", error.message);
  }
}

// Export for use in other modules
export { UserProcessor, User, ProcessedUser, ProcessingOptions };
```

### Key Improvements

- **Modern ES6+ syntax** with arrow functions, destructuring, and template literals
- **TypeScript types** for better type safety and IDE support
- **Input validation** with comprehensive error checking
- **Functional programming** approach using filter/map instead of loops
- **Error handling** with try/catch and meaningful error messages
- **Performance optimization** with batch processing for large datasets
- **Email validation** with regex patterns
- **Logging** for debugging and monitoring
- **Memory management** considerations for large datasets
- **Modular design** with reusable class structure

---

## Integration Examples

### VS Code Extension Integration

Create a VS Code extension to use local LLMs for code assistance:

```typescript
import * as vscode from "vscode";
import axios from "axios";

interface OllamaResponse {
  response: string;
  done: boolean;
}

class CodeAssistant {
  private static readonly OLLAMA_URL = "http://localhost:11434/api/generate";

  static async improveCode(code: string, language: string): Promise<string> {
    const prompt = `
Improve this ${language} code for better performance, readability, and best practices. 
Add proper error handling and documentation:

\`\`\`${language}
${code}
\`\`\`

Provide only the improved code with comments explaining the changes.
`;

    try {
      const response = await axios.post<OllamaResponse>(this.OLLAMA_URL, {
        model: "codellama",
        prompt: prompt,
        stream: false,
      });

      return response.data.response;
    } catch (error) {
      throw new Error(`Failed to improve code: ${error.message}`);
    }
  }
}

export function activate(context: vscode.ExtensionContext) {
  const disposable = vscode.commands.registerCommand(
    "codeassistant.improveCode",
    async () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor) {
        vscode.window.showErrorMessage("No active editor");
        return;
      }

      const selection = editor.selection;
      const selectedText = editor.document.getText(selection);

      if (!selectedText) {
        vscode.window.showErrorMessage("Please select code to improve");
        return;
      }

      const language = editor.document.languageId;

      try {
        vscode.window.showInformationMessage("Improving code...");

        const improvedCode = await CodeAssistant.improveCode(
          selectedText,
          language
        );

        // Create new document with improved code
        const doc = await vscode.workspace.openTextDocument({
          content: improvedCode,
          language: language,
        });

        await vscode.window.showTextDocument(doc);
      } catch (error) {
        vscode.window.showErrorMessage(`Error: ${error.message}`);
      }
    }
  );

  context.subscriptions.push(disposable);
}
```

---

## Performance Tips

### Prompt Optimization for Coding Tasks

1. **Be Specific About Requirements**

   ```
   ❌ "Make this code better"
   ✅ "Optimize this Python function for memory usage and add type hints"
   ```

2. **Provide Context**

   ```
   ❌ [code only]
   ✅ "This function processes user uploads in a web application. It needs to handle large files efficiently..."
   ```

3. **Specify Output Format**
   ```
   ❌ "Fix this code"
   ✅ "Rewrite this function and explain each improvement as a comment"
   ```

### Model Selection for Different Tasks

- **Code Generation**: CodeLlama 13B+, DeepSeek Coder
- **Code Review**: Llama 3.1 8B+, Mistral 7B
- **Documentation**: Any general model 7B+
- **Debugging**: Specialized coding models preferred

### Integration Best Practices

1. **Cache Responses** for repeated requests
2. **Implement Rate Limiting** to avoid overwhelming local models
3. **Use Streaming** for long responses
4. **Validate Output** before applying changes
5. **Version Control** all LLM-generated changes

---

## Next Steps

Explore more practical examples:

- [IDE Integration Examples](04_04_ide_integrations.md)
- [CI/CD Pipeline Integration](16_02_cicd_integration.md)
- [Code Review Automation](16_03_code_review_automation.md)
- [Testing Strategies](16_05_testing_strategies.md)

---

_Last updated: July 20, 2025_
