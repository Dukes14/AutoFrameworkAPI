Feature: Delete purchase order by ID

  Scenario: Delete an order
    Given url baseUrl + '/store/order/1'
    When method DELETE
    Then status 200
    # And match response == {}