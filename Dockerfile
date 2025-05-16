FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Install system dependencies (for rembg and image processing)
RUN apt-get update && apt-get install -y \
    build-essential \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose Flask app port
EXPOSE 5100

# Use gunicorn to run Flask app for production
CMD ["gunicorn", "--bind", "0.0.0.0:5100", "app:app", "--workers=4"]