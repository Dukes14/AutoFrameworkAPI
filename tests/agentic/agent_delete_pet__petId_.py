import requests

def test_delete_pet__petId_(base_url="https://httpbin.org"):
    url = base_url + "/pet/{petId}"
    payload = None
    resp = requests.request("DELETE", url, json=payload if payload is not None else None)
    assert resp.status_code in (200, 201, 202, 204)
    try:
        data = resp.json()
        assert data is not None
    except Exception:
        pass