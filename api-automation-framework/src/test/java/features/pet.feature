Feature: Get Pet by ID

  Scenario: Get an existing pet
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/1'
    When method GET
    Then status 200
    # And match response.id == 1
    # And match response.name == 'doggie'

  Scenario: Get a pet with an invalid ID
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/invalid_id'
    When method GET
    Then status 400

  Scenario: Get a pet that does not exist
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/999999999999999'
    When method GET
    Then status 404