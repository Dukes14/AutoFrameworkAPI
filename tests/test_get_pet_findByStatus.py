import pytest
import requests

BASE_URL = "http://petstore.swagger.io/v2"  # Replace with your actual base URL

def test_find_pets_by_status():
    """
    Test case for GET /pet/findByStatus
    """
    status_values = ["available", "pending", "sold"]
    for status in status_values:
        url = f"{BASE_URL}/pet/findByStatus?status={status}"
        response = requests.get(url)

        assert response.status_code == 200

        # assert response.headers["Content-Type"] == "application/json"
        # assert len(response.json()) > 0

        # for pet in response.json():
        #     assert pet["status"] == status
        #     # assert "id" in pet
        #     # assert "name" in pet