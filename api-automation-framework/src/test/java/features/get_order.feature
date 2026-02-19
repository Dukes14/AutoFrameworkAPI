Feature: Get Order by ID
  Retrieve order details by its ID.

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

  Scenario: Get a non-existent order
    Given path '/store/order/99999'
    When method GET
    Then status 404