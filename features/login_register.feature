Feature: Register Login page

Scenario: As a User, I can register
  # Given I am on the Register Login page
  # When I enter all correct and valid details,
  # And I click signup,
  # Then I am redirected to the project dashboard.

Scenario: As a user I can click my username and logout
  Given I am a logged in user
  And I am on Abbey Road's homepage
  When I click my username
  And I click logout
  Then I am redirected to the login page

Scenario: As a user I can click TRACKS and view all user tracks
Given I am a logged in user
When I click on the tracks tab
Then I am redirected to the tracks where I can see my uploaded tracks
