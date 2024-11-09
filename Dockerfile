# Use the official Python image
FROM python:3.9-slim
# Set the working directory
WORKDIR /app
# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
# Copy the app code
COPY app.py .
# Expose the port the app runs on
EXPOSE 5000
# Run the application
CMD ["python", "app.py"]
