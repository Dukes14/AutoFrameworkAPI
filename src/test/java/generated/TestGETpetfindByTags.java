import pytest
import requests

BASE_URL = "http://petstore.swagger.io/v2"  # Replace with your API base URL

def test_get_pet_by_tags():
    """
    Test case for GET /pet/findByTags
    """
    # Define the query parameters
    params = {
        'tags': 'available'  # Replace with your desired tags
    }

    # Send the GET request
    response = requests.get(f"{BASE_URL}/pet/findByTags", params=params)

    # Assert that the response status code is 200 (OK)
    assert response.status_code == 200

    # Optional: Add more specific assertions on the response body
    # For example:
    # assert isinstance(response.json(), list)
    # if response.json():
    #     assert "name" in response.json()[0]
    #     assert "photoUrls" in response.json()[0]
    #     assert "category" in response.json()[0]
    #     # assert response.json()[0].get("id") != None