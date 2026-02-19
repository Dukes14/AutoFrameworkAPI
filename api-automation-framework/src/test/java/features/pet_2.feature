Feature: Get Pet by ID

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def petId = 1

  Scenario: Get an existing pet
    Given path '/pet/' + petId
    When method GET
    Then status 200
    # And match response.id == petId
    # And match response.name == 'doggie'