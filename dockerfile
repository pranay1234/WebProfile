# Use a base image with Python
FROM python:3.9

# Set environment variables
ENV FLASK_RUN_PORT=80
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_APP=app.py

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 80 for the Flask application
EXPOSE 80

# Run the Flask application
CMD ["flask", "run"]

