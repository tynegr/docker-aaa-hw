# Use Python 3.8 as base image
FROM python:3.8

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the server
CMD ["python", "server.py"]

