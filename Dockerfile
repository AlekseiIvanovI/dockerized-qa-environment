#FROM python:3.12-slim
#
## Install only basic utilities if needed (curl for healthchecks, etc.)
#RUN apt-get update && apt-get install -y \
#    wget \
#    curl \
#    && rm -rf /var/lib/apt/lists/*
#
## Set up working directory
#WORKDIR /app
#
## Copy requirements and install Python deps
#COPY requirements.txt .
#RUN pip install --no-cache-dir -r requirements.txt
#
## Copy the test code
#COPY . /app
#
## Command to run tests (overridden in compose/scripts)
#CMD ["pytest", "tests/", "-v"]

FROM python:3.12-slim

# Install only essential utilities (curl for debugging/healthchecks if needed)
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . /app

# Default command (overridden by compose/scripts)
CMD ["pytest", "tests/", "-v"]