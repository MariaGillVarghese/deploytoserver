# Use an official lightweight Python image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
