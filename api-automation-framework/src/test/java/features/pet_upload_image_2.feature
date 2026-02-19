Feature: Upload an image for a pet

  Background:
    * url baseUrl

  Scenario: Upload an image for a pet with a valid petId
    Given path '/pet/123/uploadImage'
    And multipart file 'file' = { read: 'classpath:karate-logo.png', filename: 'karate-logo.png', contentType: 'image/png' }
    When method POST
    Then status 200
    # And print response
    # Examples of response assertions:
    # * assert response.code == 200
    # * assert response.message contains "additionalMetadata"

  Scenario: Attempt to upload an image for a pet with an invalid petId
    Given path '/pet/invalid/uploadImage'
    And multipart file 'file' = { read: 'classpath:karate-logo.png', filename: 'karate-logo.png', contentType: 'image/png' }
    When method POST
    Then status 405

  Scenario: Attempt to upload an image without providing an image file
    Given path '/pet/123/uploadImage'
    When method POST
    Then status 400