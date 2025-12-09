# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install uv
RUN pip install uv

# Copy the entire project context
COPY . .

# Install dependencies, including the project itself in editable mode
RUN uv pip install --system -e .

# Command to run the application using the correct module path
CMD ["uvicorn", "smartpurchase.main:app", "--host", "0.0.0.0", "--port", "8000"]