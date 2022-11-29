Feature: Search Functionality

  Scenario: Validate the search functionality in music app
    Given I go to the app
    When I click search icon in home page
    And I enter "ako" keyword in search field
    And I click search button
    Then I click the first album