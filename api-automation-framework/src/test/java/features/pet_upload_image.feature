Feature: Upload an image for a pet

  Background:
    * url baseUrl

  Scenario: Upload an image for an existing pet
    Given path '/pet/123/uploadImage'
    And multipart file 'file' = { read: 'test_image.jpg', filename: 'test_image.jpg', contentType: 'image/jpeg' }
    When method POST
    Then status 200
    #And match response == { message: '#string' }