Feature: Delete a pet

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Delete an existing pet
    Given path '/pet/9223372036854775000'
    When method DELETE
    Then status 200
    # And match response == { message: '#string' }

  Scenario: Delete a pet that does not exist
    Given path '/pet/9999999999999999999'
    When method DELETE
    Then status 404
    # And match response == { message: '#string' }