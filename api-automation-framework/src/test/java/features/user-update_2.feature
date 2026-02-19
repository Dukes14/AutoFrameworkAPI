Feature: Update User
  Scenario: Update an existing user
    Given url baseUrl
    And path '/user/testuser'
    And request {}
    When method PUT
    Then status 200
    # And match response == {}
    # Examples:
      # | username |