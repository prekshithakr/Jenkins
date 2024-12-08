# Use a base image with Python
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
