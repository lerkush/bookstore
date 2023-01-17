# Pull base image
FROM python:3.11.0-slim-bullseye

#Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /bookstore

# Install Dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .