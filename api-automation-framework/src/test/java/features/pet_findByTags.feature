Feature: Find Pets by Tags
  Retrieve pets based on specified tags.

  Scenario: Find pets with valid tags
    Given url baseUrl + '/pet/findByTags'
    And param tags = ['tag1', 'tag2']
    When method GET
    Then status 200
    # assert response != null
    # assert response.length > 0
    # Examples of body assertions (uncomment and modify as needed):
    # * validate each pet has the specified tags
    # * validate the structure of each pet object

  Scenario: Find pets with no tags
    Given url baseUrl + '/pet/findByTags'
    When method GET
    Then status 400

  Scenario: Find pets with invalid tags
    Given url baseUrl + '/pet/findByTags'
    And param tags = ['!@#$', '%^&*']
    When method GET
    Then status 400

  Scenario Outline: Find pets with different tag combinations
    Given url baseUrl + '/pet/findByTags'
    And param tags = <tags>
    When method GET
    Then status 200

    Examples:
      | tags          |
      | ['tag3']      |
      | ['tag4', 'tag5'] |