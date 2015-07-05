Feature: Searching
  Get a result for the searching
    Scenario: return a result
        Given I visit the homepage
        When fill the input "search" with "Lisp Common"
        And click on the button "Go"
        Then All the divs with class result containt "Common Lisp"
     Scenario: return a result
        Given I visit the homepage
        When fill the input "search" with "\"Thomas Eugene\""
        And click on the button "Go"
        Then All the divs with class result containt "BASIC"
        But not "Haskell"
    Scenario: Return a result exluding negative expresion
        Given I visit the homepage
        When fill the input "search" with "john -array"
        And the checkbox "Precision" is unchecked
        And click on the button "Go"
        Then which should match "BASIC", "Haskell", "Lisp" and "S-Lang"
        But not "Chapel", "Fortran" or "S".