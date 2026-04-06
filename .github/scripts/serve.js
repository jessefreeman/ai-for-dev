#!/usr/bin/env node
// Serve a static directory with clean-URL support (.html fallback).
// Usage: node .github/scripts/serve.js [dir] [port]

const http = require("http");
const fs = require("fs");
const path = require("path");

const dir = path.resolve(process.argv[2] || "/tmp/quartz-output");
const port = parseInt(process.argv[3] || "8000", 10);

const MIME = {
  ".html": "text/html; charset=utf-8",
  ".css":  "text/css",
  ".js":   "application/javascript",
  ".json": "application/json",
  ".xml":  "application/xml",
  ".ico":  "image/x-icon",
  ".png":  "image/png",
  ".jpg":  "image/jpeg",
  ".svg":  "image/svg+xml",
  ".woff2":"font/woff2",
  ".ttf":  "font/ttf",
};

function resolve(urlPath) {
  // Strip query string
  urlPath = urlPath.split("?")[0];
  // Try exact path
  let candidate = path.join(dir, urlPath);
  if (fs.existsSync(candidate) && fs.statSync(candidate).isFile()) return candidate;
  // Try .html extension
  if (fs.existsSync(candidate + ".html")) return candidate + ".html";
  // Try index.html inside directory
  const index = path.join(candidate, "index.html");
  if (fs.existsSync(index)) return index;
  // 404
  const notFound = path.join(dir, "404.html");
  return fs.existsSync(notFound) ? notFound : null;
}

const server = http.createServer((req, res) => {
  const file = resolve(req.url);
  if (!file) { res.writeHead(404); res.end("Not found"); return; }
  const ext = path.extname(file);
  const status = file.endsWith("404.html") && !req.url.endsWith("404.html") ? 404 : 200;
  res.writeHead(status, { "Content-Type": MIME[ext] || "application/octet-stream" });
  fs.createReadStream(file).pipe(res);
});

server.listen(port, () => {
  console.log(`Serving ${dir} at http://localhost:${port}`);
});
