Feature: Create a new user

  Background:
    * url baseUrl

  Scenario: Create a user with POST
    Given path '/user'
    And request {}
    When method POST
    Then status 201
    # And match response == { id: '#present', createdAt: '#present'}