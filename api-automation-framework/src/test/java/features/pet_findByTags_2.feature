Feature: Find pet by tags
  
  Scenario: Find pets by tags and verify the response
    Given url 'https://petstore.swagger.io/v2'
    And path '/pet/findByTags'
    And params { tags: ['available', 'friendly'] }
    When method GET
    Then status 200
    # And print response
    # Then assert response.length > 0
    # Examples:
    #   | tag         |
    #   | available   |
    #   | pending     |
    #   | sold        |