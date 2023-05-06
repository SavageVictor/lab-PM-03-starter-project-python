# Use an official Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements/backend.in /app

# Install the dependencies
RUN pip install --no-cache-dir -r backend.in

# Copy the rest of the application code
COPY . /app

# Expose the port the app runs on
EXPOSE 8080

# Start the application
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]
