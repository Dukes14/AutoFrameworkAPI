Feature: Get Store Inventory
  Retrieve the store's inventory.

  Scenario: Get inventory and verify successful response
    Given url baseUrl
    And path '/store/inventory'
    When method GET
    Then status 200
    # And assert response != null
    # And assert response.keySet().size() > 0