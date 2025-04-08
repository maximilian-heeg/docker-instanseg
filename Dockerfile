# 1. Choose a base image with Python installed
# Using a slim version to keep the image size smaller
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

RUN apt-get update && \
    apt-get install -y libexpat1 && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


COPY test.py .

# 5. Specify the command to run when the container starts
# Replace 'your_script.py' with the actual name of your Python script
CMD ["python", "test.py"]
