[
  {
    "filename": "pet_update.feature",
    "content": "Feature: Update an existing pet

  Scenario: Update an existing pet's details
    Given url baseUrl
    And path '/pet/123'
    And header Content-Type = 'application/json'
    When method POST
    Then status 200
    #And match response == {message: 'Pet updated successfully'}"
  }
]