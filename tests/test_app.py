# tests/test_app.py
def test_home_page():
    from app.main import app
    client = app.test_client()
    response = client.get("/")
    assert response.status_code == 200
    assert b"Text Generator" in response.data
