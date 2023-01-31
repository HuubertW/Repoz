# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .


RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY . .


EXPOSE 3000


CMD ["python", "app.py"]