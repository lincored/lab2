#!/usr/bin/env python3
import http.server
import socketserver
import os

PORT = 8080

# Переходим в рабочую директорию
os.chdir('/app')

Handler = http.server.SimpleHTTPRequestHandler

print(f"Starting web server on port {PORT}")
print(f"Server URL: http://localhost:{PORT}")
print("Press Ctrl+C to stop the server")

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped")