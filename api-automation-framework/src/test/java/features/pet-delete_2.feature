Feature: Delete a pet

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * def petId = 12345

  Scenario: Delete an existing pet
    Given path '/pet/' + petId
    When method DELETE
    Then status 200
    # And match response == { message: 'Pet deleted' }