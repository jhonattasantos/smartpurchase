import pytest
from fastapi.testclient import TestClient
from smartpurchase.main import app

client = TestClient(app)

def test_read_main():
    response = client.get("/helloworld")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello World"}
