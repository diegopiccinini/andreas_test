Feature: The form have differents fields to search

    Scenario: Fields Name Type and Designed by are into the homepage
        Given I visit the homepage
        Then I should see an input tag named "Name"
        And I should see an input tag named "Type"
        And I should see an input tag named "Designed by"
        And I should see a checkbox named "Precision"
        And I should see a checkbox named "Match all"

    Scenario: Match in different fields
        Given I visit the homepage
        When fill the input "Type" with "Scripting"
        And Searching "Scripting" by field "Type"
        And  Searching "Microsoft" by field "Designed by"
        And  "Match all" is checked
        Then All the divs with class result containt "Scripting"
        And All the divs with class result containt "Microsoft"

