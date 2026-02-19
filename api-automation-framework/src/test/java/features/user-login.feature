Feature: User Login
  Tests for the /user/login endpoint

  Scenario: Successful user login
    Given url baseUrl
    And path '/user/login'
    When method GET
    Then status 200
    # assert response != null
    # assert response.username == 'string'
    # assert response.password == 'string'