
# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /ci-app

# Copy the requirements.txt file into the container
COPY requirement.txt .

# Install the dependencies listed in requirement.txt
RUN pip install --no-cache-dir -r requirement.txt

# Copy the rest of the application files into the container
COPY ci-app/ .

# Set environment variables to prevent Python from writing .pyc files and buffer output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the command to run the Flask app
CMD ["python", "app.py"]





































#FROM python:3.11

#WORKDIR /ci-app

#RUN pip install flask

#COPY ci-app/ .

#ENV PYTHONDONTWRITEBYTECODE=1
#ENV PYTHONUNBUFFERED=1

#CMD ["python", "ci-app/app.py"]
