Feature: The homepage has a form to seach

Scenario: Visit the home page and find a form
    Given I visit the homepage
    Then I should see an input tag named "search"
    And I should see a button named "Go"
