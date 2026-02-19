Feature: Delete User

  Background:
    * url baseUrl

  Scenario: Delete an existing user
    Given path '/user/testuser'
    When method DELETE
    Then status 200
    # And match response == {message: 'User deleted'}

  Scenario: Delete a non-existing user
    Given path '/user/nonexistinguser'
    When method DELETE
    Then status 200
    # And match response == {message: 'User not found'}