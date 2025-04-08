# 1. Choose a base image with Python installed
# Using a slim version to keep the image size smaller
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your project files into the container
# Option A: Copy everything from the current directory (where you build the image)
# Make sure you have a .dockerignore file to exclude unnecessary files (like .git, venv, etc.)
COPY . .
# Option B: Copy only your script (if that's all you need)
# Replace 'your_script.py' with the actual name of your script
# COPY your_script.py .

# 4. Install the required Python package
# It's good practice to upgrade pip first
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir instanseg-torch==0.0.8

# 5. Specify the command to run when the container starts
# Replace 'your_script.py' with the actual name of your Python script
CMD ["python"]
