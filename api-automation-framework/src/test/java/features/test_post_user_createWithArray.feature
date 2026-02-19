[
  {
    "filename": "user-create-with-array.feature",
    "content": "Feature: Create users with array

  Background:     * url baseUrl     * def generateUser = call read('classpath:utils/generate-user.js') 
  Scenario: Create users with array
    Given path '/user/createWithArray'
    * def user1 = generateUser()
    * def user2 = generateUser()
    * def requestPayload = [user1, user2]
    And request requestPayload
    When method POST
    Then status 200
    # And assert response.code == 200
    # And assert response.message == 'ok'
  "
  },
  {
    "filename": "utils/generate-user.js",
    "content": "function() {\n  var faker = Java.type('com.github.javafaker.Faker');\n  var fake = new faker();\n\n  var user = {\n    id: fake.number().randomNumber(),\n    username: fake.name().username(),\n    firstName: fake.name().firstName(),\n    lastName: fake.name().lastName(),\n    email: fake.internet().emailAddress(),\n    password: fake.internet().password(),\n    phone: fake.phoneNumber().phoneNumber(),\n    userStatus: fake.number().numberBetween(0, 2)\n  };\n\n  return user;\n}\n"
  }
]