Feature: Find pet by status
  This test case verifies the GET /pet/findByStatus endpoint.

  Scenario: Find pets by available status
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'available'
    When method GET
    Then status 200
    # And match each $..status == 'available'
    # And assert response.length > 0

  Scenario: Find pets by pending status
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'pending'
    When method GET
    Then status 200
    # And match each $..status == 'pending'
    # And assert response.length > 0

  Scenario: Find pets by sold status
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200
    # And match each $..status == 'sold'
    # And assert response.length > 0

  Scenario: Find pets by invalid status
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByStatus'
    And param status = 'invalid_status'
    When method GET
    Then status 200
    #And assert response.length == 0