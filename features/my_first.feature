Feature: Basic Crud 
  As an iOS developer
  I often want to create and delete things in my project

Scenario: Add Objects
  Given I am on the root view 
  Then I touch "Add"
  And I should see "1" on row 1
  Then I touch "Add"
  Then I should see "2" on row 1
  And I should see "1" on row 2
  Then I touch "Add"
  Then I should see "3" on row 1
  And I should see "2" on row 2
  And I should see "1" on row 3
