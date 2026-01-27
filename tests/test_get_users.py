import pytest
import requests

from jsonschema import validate

BASE_URL = "https://reqres.in"


@pytest.fixture
def create_user():
    url = f"{BASE_URL}/api/users"
    payload = {
        "name": "morpheus",
        "job": "leader"
    }
    response = requests.post(url, json=payload)
    yield response.json()




def test_get_users():
    url = f"{BASE_URL}/api/users"
    response = requests.get(url)
    assert response.status_code == 200
    # assert response.json().get("data") is not None



def test_get_users_with_params():
    url = f"{BASE_URL}/api/users"
    params = {"page": 2}
    response = requests.get(url, params=params)
    assert response.status_code == 200
    # assert response.json().get("page") == 2



def test_get_single_user():
    url = f"{BASE_URL}/api/users/2"
    response = requests.get(url)
    assert response.status_code == 200
    # assert response.json().get("data").get("id") == 2



def test_get_single_user_not_found():
    url = f"{BASE_URL}/api/users/23"
    response = requests.get(url)
    assert response.status_code == 404



def test_list_resource():
    url = f"{BASE_URL}/api/unknown"
    response = requests.get(url)
    assert response.status_code == 200
    # assert response.json().get("data") is not None



def test_single_resource():
    url = f"{BASE_URL}/api/unknown/2"
    response = requests.get(url)
    assert response.status_code == 200
    # assert response.json().get("data").get("id") == 2



def test_single_resource_not_found():
    url = f"{BASE_URL}/api/unknown/23"
    response = requests.get(url)
    assert response.status_code == 404



def test_delayed_response():
    url = f"{BASE_URL}/api/users?delay=3"
    response = requests.get(url)
    assert response.status_code == 200
    # assert response.json().get("data") is not None