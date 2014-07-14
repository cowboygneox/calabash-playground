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
  Then I swipe left on cell number 1
  And I touch delete
  Then I should see "2" on row 1
  And I should see "1" on row 2

Scenario: Mass Delete Objects
  Given I am on the root view
  Then I touch "Add"
  And I should see "1" on row 1
  Then I touch "Add"
  Then I should see "2" on row 1
  And I should see "1" on row 2
  Then I touch "Edit"
  Then I edit row 1
  Then I touch "Delete"
  And I should see "1" on row 1
