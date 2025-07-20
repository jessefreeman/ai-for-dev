---
title: "Step-by-Step Development Tutorials"
parent: "Models For Coding"
nav_order: 4
---
---
title: "Step-by-Step Development Tutorials"
parent: "Models For Coding"
nav_order: 4
---

# Step-by-Step Development Tutorials

Complete tutorials that walk you through building real applications using local LLMs as coding assistants. Each tutorial includes detailed steps, code examples, and best practices for integrating AI into your development workflow.

## What You'll Learn

- Complete project workflows using local LLMs
- Best practices for prompt engineering in development
- Integration patterns with popular tools and frameworks
- Common challenges and solutions
- Performance optimization techniques

---

## Tutorial 1: Building a REST API with AI Assistance

### Overview

Create a complete REST API for a task management system using local LLMs to help with code generation, optimization, and documentation.

### Prerequisites

- Python 3.8+
- Local LLM installed (Ollama with CodeLlama recommended)
- Basic understanding of REST APIs

### Step 1: Project Setup and Structure

First, let's ask our local LLM to help design the project structure:

**Prompt:**

```
I'm building a REST API for a task management system in Python using FastAPI.
Help me create a proper project structure with folders for models, routes, database, tests, etc.
Include a requirements.txt file with necessary dependencies.
```

**Generated Structure:**

```
task-manager-api/
├── app/
│   ├── __init__.py
│   ├── main.py
│   ├── config.py
│   ├── database.py
│   ├── models/
│   │   ├── __init__.py
│   │   ├── task.py
│   │   └── user.py
│   ├── routes/
│   │   ├── __init__.py
│   │   ├── tasks.py
│   │   └── users.py
│   ├── schemas/
│   │   ├── __init__.py
│   │   ├── task.py
│   │   └── user.py
│   └── utils/
│       ├── __init__.py
│       ├── auth.py
│       └── helpers.py
├── tests/
│   ├── __init__.py
│   ├── test_tasks.py
│   └── test_users.py
├── requirements.txt
├── .env.example
├── .gitignore
└── README.md
```

### Step 2: Database Models

**Prompt:**

```
Create SQLAlchemy models for a task management system. I need:
1. User model with id, username, email, hashed_password, created_at
2. Task model with id, title, description, completed, priority, due_date, user_id (foreign key), created_at, updated_at
Include proper relationships and constraints.
```

**Generated Code (app/models/task.py):**

```python
from sqlalchemy import Column, Integer, String, Boolean, DateTime, Text, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from enum import Enum

Base = declarative_base()

class Priority(Enum):
    LOW = "low"
    MEDIUM = "medium"
    HIGH = "high"
    URGENT = "urgent"

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String(50), unique=True, index=True, nullable=False)
    email = Column(String(100), unique=True, index=True, nullable=False)
    hashed_password = Column(String(255), nullable=False)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    is_active = Column(Boolean, default=True)

    # Relationship
    tasks = relationship("Task", back_populates="owner", cascade="all, delete-orphan")

    def __repr__(self):
        return f"<User(username='{self.username}', email='{self.email}')>"

class Task(Base):
    __tablename__ = "tasks"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(200), nullable=False, index=True)
    description = Column(Text, nullable=True)
    completed = Column(Boolean, default=False, index=True)
    priority = Column(String(20), default=Priority.MEDIUM.value)
    due_date = Column(DateTime(timezone=True), nullable=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now(), onupdate=func.now())

    # Foreign Key
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)

    # Relationship
    owner = relationship("User", back_populates="tasks")

    def __repr__(self):
        return f"<Task(title='{self.title}', completed={self.completed})>"
```

### Step 3: Pydantic Schemas

**Prompt:**

```
Create Pydantic schemas for the task management API. I need request/response schemas for:
1. User creation, user response, user update
2. Task creation, task response, task update, task list with pagination
Include proper validation and example values.
```

**Generated Code (app/schemas/task.py):**

```python
from pydantic import BaseModel, Field, EmailStr, validator
from typing import Optional, List
from datetime import datetime
from enum import Enum

class Priority(str, Enum):
    LOW = "low"
    MEDIUM = "medium"
    HIGH = "high"
    URGENT = "urgent"

# User Schemas
class UserBase(BaseModel):
    username: str = Field(..., min_length=3, max_length=50, example="johndoe")
    email: EmailStr = Field(..., example="john@example.com")

class UserCreate(UserBase):
    password: str = Field(..., min_length=8, max_length=100, example="securepassword123")

    @validator('password')
    def validate_password(cls, v):
        if not any(c.isupper() for c in v):
            raise ValueError('Password must contain at least one uppercase letter')
        if not any(c.islower() for c in v):
            raise ValueError('Password must contain at least one lowercase letter')
        if not any(c.isdigit() for c in v):
            raise ValueError('Password must contain at least one digit')
        return v

class UserUpdate(BaseModel):
    username: Optional[str] = Field(None, min_length=3, max_length=50)
    email: Optional[EmailStr] = None

class UserResponse(UserBase):
    id: int
    created_at: datetime
    is_active: bool

    class Config:
        from_attributes = True

# Task Schemas
class TaskBase(BaseModel):
    title: str = Field(..., min_length=1, max_length=200, example="Complete project documentation")
    description: Optional[str] = Field(None, max_length=1000, example="Write comprehensive API documentation")
    priority: Priority = Field(default=Priority.MEDIUM, example=Priority.HIGH)
    due_date: Optional[datetime] = Field(None, example="2025-07-30T15:30:00")

class TaskCreate(TaskBase):
    pass

class TaskUpdate(BaseModel):
    title: Optional[str] = Field(None, min_length=1, max_length=200)
    description: Optional[str] = Field(None, max_length=1000)
    completed: Optional[bool] = None
    priority: Optional[Priority] = None
    due_date: Optional[datetime] = None

class TaskResponse(TaskBase):
    id: int
    completed: bool
    created_at: datetime
    updated_at: datetime
    user_id: int

    class Config:
        from_attributes = True

class TaskListResponse(BaseModel):
    tasks: List[TaskResponse]
    total: int
    page: int
    size: int
    pages: int

# Authentication Schemas
class Token(BaseModel):
    access_token: str
    token_type: str = "bearer"

class TokenData(BaseModel):
    username: Optional[str] = None

class UserLogin(BaseModel):
    username: str = Field(..., example="johndoe")
    password: str = Field(..., example="securepassword123")
```

### Step 4: API Routes with Authentication

**Prompt:**

```
Create FastAPI routes for the task management system with JWT authentication. Include:
1. User registration and login
2. CRUD operations for tasks
3. Proper error handling and status codes
4. Pagination for task listing
5. Authentication middleware
```

**Generated Code (app/routes/tasks.py):**

```python
from fastapi import APIRouter, Depends, HTTPException, status, Query
from sqlalchemy.orm import Session
from typing import List, Optional
from datetime import datetime

from ..database import get_db
from ..models.task import Task, User
from ..schemas.task import TaskCreate, TaskUpdate, TaskResponse, TaskListResponse, Priority
from ..utils.auth import get_current_user
from ..utils.helpers import calculate_pagination

router = APIRouter(prefix="/tasks", tags=["tasks"])

@router.post("/", response_model=TaskResponse, status_code=status.HTTP_201_CREATED)
async def create_task(
    task_data: TaskCreate,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Create a new task for the authenticated user."""
    try:
        db_task = Task(
            title=task_data.title,
            description=task_data.description,
            priority=task_data.priority.value,
            due_date=task_data.due_date,
            user_id=current_user.id
        )

        db.add(db_task)
        db.commit()
        db.refresh(db_task)

        return db_task

    except Exception as e:
        db.rollback()
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to create task: {str(e)}"
        )

@router.get("/", response_model=TaskListResponse)
async def get_tasks(
    page: int = Query(1, ge=1, description="Page number"),
    size: int = Query(10, ge=1, le=100, description="Page size"),
    completed: Optional[bool] = Query(None, description="Filter by completion status"),
    priority: Optional[Priority] = Query(None, description="Filter by priority"),
    search: Optional[str] = Query(None, min_length=1, description="Search in title and description"),
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Get paginated list of tasks for the authenticated user."""

    # Build query
    query = db.query(Task).filter(Task.user_id == current_user.id)

    # Apply filters
    if completed is not None:
        query = query.filter(Task.completed == completed)

    if priority:
        query = query.filter(Task.priority == priority.value)

    if search:
        search_term = f"%{search}%"
        query = query.filter(
            Task.title.ilike(search_term) | Task.description.ilike(search_term)
        )

    # Count total items
    total = query.count()

    # Apply pagination
    offset = (page - 1) * size
    tasks = query.order_by(Task.created_at.desc()).offset(offset).limit(size).all()

    # Calculate pagination info
    pagination = calculate_pagination(total, page, size)

    return TaskListResponse(
        tasks=tasks,
        total=total,
        page=page,
        size=size,
        pages=pagination['pages']
    )

@router.get("/{task_id}", response_model=TaskResponse)
async def get_task(
    task_id: int,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Get a specific task by ID."""
    task = db.query(Task).filter(
        Task.id == task_id,
        Task.user_id == current_user.id
    ).first()

    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )

    return task

@router.put("/{task_id}", response_model=TaskResponse)
async def update_task(
    task_id: int,
    task_update: TaskUpdate,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Update a specific task."""
    task = db.query(Task).filter(
        Task.id == task_id,
        Task.user_id == current_user.id
    ).first()

    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )

    try:
        # Update only provided fields
        update_data = task_update.dict(exclude_unset=True)

        for field, value in update_data.items():
            if field == 'priority' and value:
                value = value.value
            setattr(task, field, value)

        task.updated_at = datetime.utcnow()

        db.commit()
        db.refresh(task)

        return task

    except Exception as e:
        db.rollback()
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to update task: {str(e)}"
        )

@router.delete("/{task_id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_task(
    task_id: int,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Delete a specific task."""
    task = db.query(Task).filter(
        Task.id == task_id,
        Task.user_id == current_user.id
    ).first()

    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )

    try:
        db.delete(task)
        db.commit()

    except Exception as e:
        db.rollback()
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to delete task: {str(e)}"
        )

@router.post("/{task_id}/toggle", response_model=TaskResponse)
async def toggle_task_completion(
    task_id: int,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """Toggle the completion status of a task."""
    task = db.query(Task).filter(
        Task.id == task_id,
        Task.user_id == current_user.id
    ).first()

    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )

    try:
        task.completed = not task.completed
        task.updated_at = datetime.utcnow()

        db.commit()
        db.refresh(task)

        return task

    except Exception as e:
        db.rollback()
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to toggle task completion: {str(e)}"
        )
```

### Step 5: Testing with AI-Generated Test Cases

**Prompt:**

```
Create comprehensive pytest test cases for the task API endpoints. Include:
1. Test fixtures for database setup and test data
2. Authentication tests
3. CRUD operation tests
4. Validation tests
5. Error handling tests
6. Pagination tests
```

**Generated Code (tests/test_tasks.py):**

```python
import pytest
from fastapi.testclient import TestClient
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from datetime import datetime, timedelta

from app.main import app
from app.database import get_db, Base
from app.models.task import User, Task
from app.utils.auth import get_password_hash, create_access_token

# Test database setup
SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False})
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def override_get_db():
    try:
        db = TestingSessionLocal()
        yield db
    finally:
        db.close()

app.dependency_overrides[get_db] = override_get_db

@pytest.fixture(scope="function")
def db_session():
    """Create a fresh database for each test."""
    Base.metadata.create_all(bind=engine)
    db = TestingSessionLocal()
    try:
        yield db
    finally:
        db.close()
        Base.metadata.drop_all(bind=engine)

@pytest.fixture
def client():
    """Create a test client."""
    return TestClient(app)

@pytest.fixture
def test_user(db_session):
    """Create a test user."""
    user = User(
        username="testuser",
        email="test@example.com",
        hashed_password=get_password_hash("testpassword123")
    )
    db_session.add(user)
    db_session.commit()
    db_session.refresh(user)
    return user

@pytest.fixture
def auth_headers(test_user):
    """Create authentication headers."""
    token = create_access_token(data={"sub": test_user.username})
    return {"Authorization": f"Bearer {token}"}

@pytest.fixture
def test_tasks(db_session, test_user):
    """Create test tasks."""
    tasks = [
        Task(
            title="Test Task 1",
            description="Description 1",
            priority="high",
            user_id=test_user.id
        ),
        Task(
            title="Test Task 2",
            description="Description 2",
            priority="medium",
            completed=True,
            user_id=test_user.id
        ),
        Task(
            title="Test Task 3",
            description="Description 3",
            priority="low",
            due_date=datetime.utcnow() + timedelta(days=7),
            user_id=test_user.id
        )
    ]

    for task in tasks:
        db_session.add(task)
    db_session.commit()

    for task in tasks:
        db_session.refresh(task)

    return tasks

class TestTaskCreation:
    def test_create_task_success(self, client, auth_headers):
        """Test successful task creation."""
        task_data = {
            "title": "New Task",
            "description": "Task description",
            "priority": "high",
            "due_date": "2025-12-31T23:59:59"
        }

        response = client.post("/tasks/", json=task_data, headers=auth_headers)

        assert response.status_code == 201
        data = response.json()
        assert data["title"] == task_data["title"]
        assert data["description"] == task_data["description"]
        assert data["priority"] == task_data["priority"]
        assert data["completed"] is False
        assert "id" in data
        assert "created_at" in data

    def test_create_task_unauthorized(self, client):
        """Test task creation without authentication."""
        task_data = {"title": "New Task", "description": "Description"}

        response = client.post("/tasks/", json=task_data)

        assert response.status_code == 401

    def test_create_task_invalid_data(self, client, auth_headers):
        """Test task creation with invalid data."""
        # Missing required title
        response = client.post(
            "/tasks/",
            json={"description": "Description"},
            headers=auth_headers
        )
        assert response.status_code == 422

        # Title too long
        response = client.post(
            "/tasks/",
            json={"title": "x" * 201},
            headers=auth_headers
        )
        assert response.status_code == 422

class TestTaskRetrieval:
    def test_get_tasks_pagination(self, client, auth_headers, test_tasks):
        """Test task listing with pagination."""
        response = client.get("/tasks/?page=1&size=2", headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert len(data["tasks"]) == 2
        assert data["total"] == 3
        assert data["page"] == 1
        assert data["size"] == 2
        assert data["pages"] == 2

    def test_get_tasks_filtering(self, client, auth_headers, test_tasks):
        """Test task filtering."""
        # Filter by completion status
        response = client.get("/tasks/?completed=true", headers=auth_headers)
        assert response.status_code == 200
        data = response.json()
        assert len(data["tasks"]) == 1
        assert data["tasks"][0]["completed"] is True

        # Filter by priority
        response = client.get("/tasks/?priority=high", headers=auth_headers)
        assert response.status_code == 200
        data = response.json()
        assert len(data["tasks"]) == 1
        assert data["tasks"][0]["priority"] == "high"

    def test_get_tasks_search(self, client, auth_headers, test_tasks):
        """Test task search functionality."""
        response = client.get("/tasks/?search=Task 1", headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert len(data["tasks"]) == 1
        assert "Task 1" in data["tasks"][0]["title"]

    def test_get_single_task(self, client, auth_headers, test_tasks):
        """Test retrieving a single task."""
        task_id = test_tasks[0].id
        response = client.get(f"/tasks/{task_id}", headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert data["id"] == task_id
        assert data["title"] == test_tasks[0].title

    def test_get_nonexistent_task(self, client, auth_headers):
        """Test retrieving a non-existent task."""
        response = client.get("/tasks/999", headers=auth_headers)

        assert response.status_code == 404

class TestTaskUpdate:
    def test_update_task_success(self, client, auth_headers, test_tasks):
        """Test successful task update."""
        task_id = test_tasks[0].id
        update_data = {
            "title": "Updated Task",
            "completed": True,
            "priority": "low"
        }

        response = client.put(f"/tasks/{task_id}", json=update_data, headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert data["title"] == update_data["title"]
        assert data["completed"] == update_data["completed"]
        assert data["priority"] == update_data["priority"]

    def test_update_partial_task(self, client, auth_headers, test_tasks):
        """Test partial task update."""
        task_id = test_tasks[0].id
        update_data = {"title": "Partially Updated"}

        response = client.put(f"/tasks/{task_id}", json=update_data, headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert data["title"] == update_data["title"]
        # Other fields should remain unchanged
        assert data["description"] == test_tasks[0].description

    def test_toggle_task_completion(self, client, auth_headers, test_tasks):
        """Test toggling task completion."""
        task_id = test_tasks[0].id
        original_status = test_tasks[0].completed

        response = client.post(f"/tasks/{task_id}/toggle", headers=auth_headers)

        assert response.status_code == 200
        data = response.json()
        assert data["completed"] == (not original_status)

class TestTaskDeletion:
    def test_delete_task_success(self, client, auth_headers, test_tasks):
        """Test successful task deletion."""
        task_id = test_tasks[0].id

        response = client.delete(f"/tasks/{task_id}", headers=auth_headers)

        assert response.status_code == 204

        # Verify task is deleted
        response = client.get(f"/tasks/{task_id}", headers=auth_headers)
        assert response.status_code == 404

    def test_delete_nonexistent_task(self, client, auth_headers):
        """Test deleting a non-existent task."""
        response = client.delete("/tasks/999", headers=auth_headers)

        assert response.status_code == 404

class TestTaskSecurity:
    def test_user_isolation(self, client, db_session):
        """Test that users can only access their own tasks."""
        # Create two users
        user1 = User(username="user1", email="user1@test.com", hashed_password="hash1")
        user2 = User(username="user2", email="user2@test.com", hashed_password="hash2")
        db_session.add_all([user1, user2])
        db_session.commit()
        db_session.refresh(user1)
        db_session.refresh(user2)

        # Create task for user1
        task = Task(title="User1 Task", user_id=user1.id)
        db_session.add(task)
        db_session.commit()
        db_session.refresh(task)

        # Create token for user2
        token = create_access_token(data={"sub": user2.username})
        headers = {"Authorization": f"Bearer {token}"}

        # User2 should not be able to access user1's task
        response = client.get(f"/tasks/{task.id}", headers=headers)
        assert response.status_code == 404

# Run tests
if __name__ == "__main__":
    pytest.main([__file__])
```

### Step 6: Documentation Generation

**Prompt:**

```
Generate comprehensive API documentation for the task management system. Include:
1. OpenAPI/Swagger documentation
2. README.md with setup instructions
3. Example usage scenarios
4. Environment configuration guide
```

**Generated Documentation (README.md):**

````markdown
# Task Manager API

A modern REST API for task management built with FastAPI, SQLAlchemy, and JWT authentication.

## Features

- ✅ User registration and authentication
- ✅ JWT token-based security
- ✅ CRUD operations for tasks
- ✅ Task filtering and search
- ✅ Pagination support
- ✅ Priority levels and due dates
- ✅ Comprehensive error handling
- ✅ Input validation
- ✅ API documentation with Swagger
- ✅ Test coverage

## Quick Start

### 1. Installation

```bash
# Clone the repository
git clone <repository-url>
cd task-manager-api

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```
````

### 2. Environment Setup

```bash
# Copy environment template
cp .env.example .env

# Edit .env with your settings
DATABASE_URL=sqlite:///./tasks.db
SECRET_KEY=your-secret-key-here
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
```

### 3. Run the Application

```bash
# Start the development server
uvicorn app.main:app --reload

# The API will be available at:
# - API: http://localhost:8000
# - Documentation: http://localhost:8000/docs
# - Redoc: http://localhost:8000/redoc
```

## API Usage Examples

### Authentication

```bash
# Register a new user
curl -X POST "http://localhost:8000/auth/register" \
  -H "Content-Type: application/json" \
  -d '{
    "username": "johndoe",
    "email": "john@example.com",
    "password": "SecurePass123"
  }'

# Login to get access token
curl -X POST "http://localhost:8000/auth/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "username=johndoe&password=SecurePass123"
```

### Task Management

```bash
# Create a new task
curl -X POST "http://localhost:8000/tasks/" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Complete project",
    "description": "Finish the task management API",
    "priority": "high",
    "due_date": "2025-12-31T23:59:59"
  }'

# Get all tasks with filtering
curl -X GET "http://localhost:8000/tasks/?completed=false&priority=high&page=1&size=10" \
  -H "Authorization: Bearer YOUR_TOKEN"

# Update a task
curl -X PUT "http://localhost:8000/tasks/1" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Updated task title",
    "completed": true
  }'

# Delete a task
curl -X DELETE "http://localhost:8000/tasks/1" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Testing

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov=app tests/

# Run specific test file
pytest tests/test_tasks.py -v
```

## Project Structure

```
task-manager-api/
├── app/
│   ├── __init__.py
│   ├── main.py              # FastAPI application setup
│   ├── config.py            # Configuration settings
│   ├── database.py          # Database connection
│   ├── models/              # SQLAlchemy models
│   ├── routes/              # API route handlers
│   ├── schemas/             # Pydantic schemas
│   └── utils/               # Utility functions
├── tests/                   # Test files
├── requirements.txt         # Python dependencies
├── .env.example            # Environment template
└── README.md               # This file
```

## Deployment

### Docker Deployment

```dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
```

### Environment Variables

| Variable                      | Description                | Default                |
| ----------------------------- | -------------------------- | ---------------------- |
| `DATABASE_URL`                | Database connection string | `sqlite:///./tasks.db` |
| `SECRET_KEY`                  | JWT secret key             | Required               |
| `ALGORITHM`                   | JWT algorithm              | `HS256`                |
| `ACCESS_TOKEN_EXPIRE_MINUTES` | Token expiration time      | `30`                   |

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

## License

This project is licensed under the MIT License.

```

### Tutorial Summary

This tutorial demonstrated how to use local LLMs effectively in a complete development workflow:

1. **Project Planning**: Using AI to design proper project structure
2. **Code Generation**: Creating models, schemas, and API routes
3. **Testing**: Generating comprehensive test suites
4. **Documentation**: Producing complete project documentation

### Key Takeaways

- **Iterative Prompting**: Break complex tasks into smaller, specific prompts
- **Code Review**: Always review and test AI-generated code
- **Context Preservation**: Provide relevant context in each prompt
- **Validation**: Include proper validation and error handling
- **Documentation**: Generate both code comments and user documentation

---

## Tutorial 2: Frontend Integration with React

### Overview
Build a React frontend that integrates with our task management API using local LLMs for component generation and optimization.

### Coming Next
- React component generation
- State management with Redux Toolkit
- API integration patterns
- Testing strategies for frontend code
- Performance optimization techniques

---

*Continue to [Tutorial 2: Frontend Integration](04_05_frontend_integration_tutorial.md)*

---

*Last updated: July 20, 2025*
```
