Feature: Update User
  Scenario: Update an existing user
    Given url baseUrl
    And path '/user/testuser'
    And method PUT
    Then status 200
    # And match response == '#notnull'
    # And assert response.id == 123