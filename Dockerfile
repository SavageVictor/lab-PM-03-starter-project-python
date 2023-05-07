# Use the official Python image as a base
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the entire project and install dependencies
COPY . .
RUN pip install --no-cache-dir -r requirements/backend.in

# Expose the port on which the application will run
EXPOSE 8080

# Define the command to start the application using uvicorn
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]


