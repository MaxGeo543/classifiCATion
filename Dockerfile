# Use image based on target platform
FROM --platform=linux/arm64 arm64v8/python:3.12-slim AS build-arm64
FROM --platform=linux/amd64 python:3.12-slim AS build-amd64
FROM build-$TARGETARCH

# Set the working directory inside the container
WORKDIR /app

# Copy only the requirements file first (for efficient caching)
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port that Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
