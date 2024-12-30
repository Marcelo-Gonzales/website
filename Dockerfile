# Pull base image
FROM python:3.13.1

# Set enviornment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# Set work directory
WORKDIR /website

# Install dependencies
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

# Copy project
COPY . .