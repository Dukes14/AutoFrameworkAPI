Feature: Get Store Inventory
  This feature tests the GET /store/inventory endpoint

  Scenario: Get inventory of the store
    Given url baseUrl
    And path '/store/inventory'
    When method GET
    Then status 200
    # And print response
    # assert response != null
    # Examples of possible assertions:
    # And assert response.available > 0