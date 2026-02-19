Feature: Logout User
  Tests the logout endpoint.

  Scenario: Successful Logout
    Given url baseUrl
    And path '/user/logout'
    When method GET
    Then status 200
    # And match response == { message: 'Logout successful' }