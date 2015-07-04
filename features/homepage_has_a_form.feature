Feature: The homepage has a form to search

Scenario: Visit the home page and find a form
    Given I visit the homepage
    Then I should see an input tag named "search"
    And I should see a button named "Go"

Scenario: Visit the home page and find a form
    Given I visit the homepage
    When fill the input "search" with "Microsoft"
    And click on the button "Go"
    Then All the divs with class result containt "Microsoft"