# smartPurchase API

This is a simple FastAPI application with a PostgreSQL database, managed with Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd smartPurchase
   ```

2. **Build and run the application:**
   ```bash
   docker-compose up --build
   ```

   The API will be available at `http://localhost:8000`.

## API Endpoints

- `GET /helloworld`: Returns a simple "Hello World" message.
- `GET /docs`: OpenAPI documentation.
- `GET /redoc`: ReDoc documentation.

## Running Tests

To run the tests, you need to have a local Python environment with the dependencies installed.

1. **Create and activate a virtual environment:**
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   ```

2. **Install the dependencies:**
   ```bash
   pip install -e ".[test]"
   ```

3. **Run the tests:**
   ```bash
   pytest
   ```
