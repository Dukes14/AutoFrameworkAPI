import pytest
import requests

BASE_URL = "http://petstore.swagger.io/v2"  # Replace with your API base URL if different

def test_get_pet_by_status():
    """
    Test case for GET /pet/findByStatus
    """
    status = "available"  # You can change the status to 'pending' or 'sold'
    url = f"{BASE_URL}/pet/findByStatus?status={status}"

    response = requests.get(url)

    assert response.status_code == 200

    # Optional: Add more specific assertions on the response body
    # data = response.json()
    # assert isinstance(data, list)
    # if data:
    #     first_pet = data[0]
    #     assert "id" in first_pet
    #     assert "name" in first_pet
    #     assert "status" in first_pet
    #     assert first_pet["status"] == status