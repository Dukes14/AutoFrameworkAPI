Feature: Get Order by ID
  Retrieve an order from the store by its ID.

  Background:
    * url baseUrl

  Scenario: Get an existing order
    Given path '/store/order/1'
    When method GET
    Then status 200
    # And match response.id == 1
    # And match response.petId == '#number'
    # And match response.quantity == '#number'
    # And match response.shipDate == '#string'
    # And match response.status == '#string'
    # And match response.complete == '#boolean'

  Scenario: Get an order with an invalid ID
    Given path '/store/order/invalid'
    When method GET
    Then status 404

  Scenario: Get a non-existent order
    Given path '/store/order/999999'
    When method GET
    Then status 404