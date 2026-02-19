Feature: Delete User

  Background:
    * url baseUrl

  Scenario: Delete an existing user
    Given path '/user/testuser'
    When method DELETE
    Then status 200
    # And match response == {}