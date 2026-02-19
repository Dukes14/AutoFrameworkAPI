Feature: Create users with list

  Background:
    * url baseUrl

  Scenario: Create users with a list of user objects
    Given path '/user/createWithList'
    And request [
      {
        "id": 1,
        "username": "user1",
        "firstName": "First1",
        "lastName": "Last1",
        "email": "user1@example.com",
        "password": "password1",
        "phone": "123-456-7890",
        "userStatus": 0
      },
      {
        "id": 2,
        "username": "user2",
        "firstName": "First2",
        "lastName": "Last2",
        "email": "user2@example.com",
        "password": "password2",
        "phone": "987-654-3210",
        "userStatus": 0
      }
    ]
    When method POST
    Then status 200
    # assert response.code == 200
    # assert response.message == 'ok'