# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set environment variables for Django
ENV DJANGO_SETTINGS_MODULE=getorgi.settings
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
RUN mkdir /code
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY . /code/

# Install any dependencies
RUN pip install -r requirements.txt

# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
