Feature: Update an existing pet

  Scenario: Update a pet with valid data
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet'
    And request
      """
      {
        "id": 12345,
        "category": {
          "id": 1,
          "name": "Dogs"
        },
        "name": "Buddy",
        "photoUrls": [
          "url1",
          "url2"
        ],
        "tags": [
          {
            "id": 1,
            "name": "GoldenRetriever"
          }
        ],
        "status": "available"
      }
      """
    When method PUT
    Then status 200
    # And assert response.id == 12345
    # And assert response.name == 'Buddy'

  Scenario: Update a pet with invalid data
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet'
    And request
      """
      {
        "id": "abc",
        "category": {
          "id": 1,
          "name": "Dogs"
        },
        "name": "Buddy",
        "photoUrls": [
          "url1",
          "url2"
        ],
        "tags": [
          {
            "id": 1,
            "name": "GoldenRetriever"
          }
        ],
        "status": "available"
      }
      """
    When method PUT
    Then status 400