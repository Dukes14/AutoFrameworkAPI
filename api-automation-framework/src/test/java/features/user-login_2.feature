Feature: User Login
  This feature tests the user login endpoint.

  Scenario: Successful user login
    Given url baseUrl
    And path '/user/login'
    When method GET
    Then status 200
    # And match response == '#notnull'
    # And assert response.username == 'string'
    # And assert response.token != null