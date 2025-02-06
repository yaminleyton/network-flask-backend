# Use official Python image as base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run the Flask application
CMD ["python", "app.py"]
