Feature: Update an existing pet

  Scenario: Update an existing pet with valid data
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet'
    And request
      """
      {
        "id": 12345,
        "category": {
          "id": 0,
          "name": "string"
        },
        "name": "doggie",
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }
      """
    When method PUT
    Then status 200
    # And assert response.id == 12345
    # And assert response.name == 'doggie'