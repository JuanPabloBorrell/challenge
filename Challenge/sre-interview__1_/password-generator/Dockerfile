# Use a base Python image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current contents of the directory to the container at /app
COPY . .

# Install the necessary dependencies
RUN pip install Flask

# Expose port 5000 so that Flask can be accessed from outside the container
EXPOSE 5000

# Command to run Flask application
CMD ["python3", "main.py"]
