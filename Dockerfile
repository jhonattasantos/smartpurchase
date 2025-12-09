# Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install uv
RUN pip install uv

# Copy the entire project context
COPY . .

# Install dependencies, including the project itself
RUN uv pip install --system ."[test,dev]"

# Command to run the application
# O host 0.0.0.0 é crucial para o Docker. A porta será lida da variável de ambiente pela aplicação.
CMD ["uvicorn", "smartpurchase.main:app", "--host", "0.0.0.0"]
