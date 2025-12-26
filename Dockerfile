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