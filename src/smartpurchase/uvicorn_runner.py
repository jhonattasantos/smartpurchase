# src/smartpurchase/uvicorn_runner.py
import uvicorn
from .main import app
from .core.config import settings

if __name__ == "__main__":
    uvicorn.run(
        app,
        host="0.0.0.0",
        port=settings.PORT,
    )
