# Use Python base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy the HTML and Python files
COPY . /app

# Expose port 8000
EXPOSE 8000

# Run the Python HTTP server
CMD ["python", "webapp.py"]
