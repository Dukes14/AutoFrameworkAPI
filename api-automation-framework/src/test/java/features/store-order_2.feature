Feature: Create a new order in the store

  Background:
    * url baseUrl

  Scenario: Create a new order
    Given path '/store/order'
    And request
      """
      {
        "id": 0,
        "petId": 0,
        "quantity": 0,
        "shipDate": "2024-01-01T12:00:00.000Z",
        "status": "placed",
        "complete": true
      }
      """
    When method POST
    Then status 200
    # assert response.id != null
    # assert response.petId == 0
    # assert response.quantity == 0
    # assert response.status == 'placed'