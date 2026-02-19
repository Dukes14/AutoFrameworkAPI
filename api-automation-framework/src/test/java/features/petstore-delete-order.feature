Feature: Delete purchase order by ID

  Scenario: Delete an order
    Given url baseUrl + '/store/order/1'
    And method DELETE
    Then status 200
    # And assert response == ''