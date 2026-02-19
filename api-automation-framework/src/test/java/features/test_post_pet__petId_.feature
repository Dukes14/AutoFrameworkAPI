[
  {
    "filename": "pet_update.feature",
    "content": "Feature: Update an existing pet

  Scenario: Update an existing pet's details
    Given url baseUrl + '/pet/123'
    And header Content-Type = 'application/json'
    And form field name = 'doggie'
    And form field status = 'available'
    When method POST
    Then status 200
    # And match response == {message: '#string'}"
  }
]