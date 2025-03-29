# Use an official Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 (App Runner expects an open port)
EXPOSE 8080

# Start the Flask application
CMD ["python", "app.py"]

