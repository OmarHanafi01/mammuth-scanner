# Use an official Python runtime as the base image
FROM python:3.12.0-slim

# Set the working directory within the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# Define the command to run your application
CMD ["python3", "-m", "analyzer", "analyze"]
