Feature: Support Precision

    Scenario: Search with Precision
    The capital letter is a lowercase, so there are not results
        Given I visit the homepage
        When Searching "scripting" by field "Type"
        And check the checkbox "Precision"
        And click on the button "Go"
        Then has not results

    Scenario: Search with Precision
    The capital letter is a lowercase, so there are not results
        Given I visit the homepage
        When Searching "scripting" by field "Type"
        And the checkbox "Precision" is unchecked
        And click on the button "Go"
        Then has results

    Scenario: Search without Precision
    The capital letter is a Uppercase, so there are results
        Given I visit the homepage
        When Searching "Scripting" by field "Type"
        And check the checkbox "Precision"
        And click on the button "Go"
        Then has results