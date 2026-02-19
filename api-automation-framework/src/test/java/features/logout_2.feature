Feature: Logout User
  Tests the logout endpoint.

  Scenario: Logout successfully
    Given url baseUrl
    And path '/user/logout'
    When method GET
    Then status 200
    # And match response == { message: 'Logout successful' }