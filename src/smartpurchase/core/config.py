# src/smartpurchase/core/config.py
from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    """
    Carrega as configurações das variáveis de ambiente.
    """
    PORT: int = 8000
    DATABASE_URL: str

    class Config:
        env_file = ".env"
        env_file_encoding = "utf-8"

# Instância global das configurações
settings = Settings()
