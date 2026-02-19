Feature: Create User With Array

  Scenario: Create users with array
    Given url baseUrl
    And path '/user/createWithArray'
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
        "phone": "098-765-4321",
        "userStatus": 1
      }
    ]
    When method POST
    Then status 200
    # And assert response.code == 200
    # And assert response.message == 'ok'