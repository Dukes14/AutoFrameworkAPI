import requests

def test_get_store_inventory(base_url="https://httpbin.org"):
    url = base_url + "/store/inventory"
    payload = None
    resp = requests.request("GET", url, json=payload if payload is not None else None)
    assert resp.status_code in (200, 201, 202, 204)
    try:
        data = resp.json()
        assert data is not None
    except Exception:
        pass