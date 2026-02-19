Feature: Find pet by status
  This test case verifies the GET /pet/findByStatus endpoint.

  Scenario: Find pets with status 'available'
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'available'
    When method GET
    Then status 200
    # And print response
    # Examples of possible assertions:
    # And assert response.length > 0
    # * def pet = response[0]
    # * assert pet.name != null

  Scenario: Find pets with status 'pending'
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'pending'
    When method GET
    Then status 200
    # And print response
    # Examples of possible assertions:
    # And assert response.length > 0
    # * def pet = response[0]
    # * assert pet.name != null

  Scenario: Find pets with status 'sold'
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200
    # And print response
    # Examples of possible assertions:
    # And assert response.length > 0
    # * def pet = response[0]
    # * assert pet.name != null