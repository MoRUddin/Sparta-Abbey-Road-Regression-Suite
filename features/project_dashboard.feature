Feature: Project dashboard
#   Scenario: As a user I can select the NEW MASTERING PROJECT button from the projects tab
#     Given I am a logged in user
#     And I am on projects tab
#     When I click new mastering project
#     Then I am redirected to entering new mastering project details
#
#   Scenario: As a logged in user I can click one of the START PROJECT buttons to start a new mixing project
#     Given I am a logged in user
#     And I have clicked online mixing
#     When I click the start project button
#     Then I am redirected to the online mixing upload page
#
#   Scenario: As a user, I can select NEW MIXING PROJECT button from projects tab
#     Given I am a logged in user
#     And I am on projects tab
#     When I click new mixing project
#     Then I am redirected to entering new mixing project details
#
#   Scenario: As a user I can click TRACKS and view all user tracks
#     Given I am a logged in user
#     When I click on the tracks tab
#     And I am redirected to the tracks where I can see my uploaded tracks
#     And I am on projects tab
#     When I click new mixing project
#     Then I am redirected to entering new mixing project details
#
#   Scenario: As a User, I can select to fast track my project
#     Given I am a logged in user
#       And I click new mastering project
#       And I click on extra options section
#     When I select fast track
#     Then The remove from basket option appears

# Scenario: As a User, I can add project notes that I can communicate with the project engineer
#     Given I am a logged in user
#     When I click new mixing project
#     And I am on the project notes page
#     When I add the project title
#     And I add project notes
#     And I click NEXT
#     And I click BACK
#     Then The project notes are filled in
#     And The project title is filled in
#     Then I am redirected to entering new mixing project details
#
#   Scenario: As a User, I can select to fast track my project
#     Given I am a logged in user
#     And I click new mastering project
#     And I click on extra options section
#     When I select fast track
#     Then The remove from basket option appears
#
#   Scenario: As a user I can enter my billing address so that I can place my order
#     Given I am a logged in user
#     And I am on projects tab
#     And I have an active project
#     When I click make payment on the projects tab
#     And I fill in billing details
#     When I click make payment on the billing page
#     And I

  # Scenario: As a user I can see all projects in the projects tab
  #   Given I am a logged in user
  #   And I am on projects tab
  #   Then I can see all my projects

  Scenario: As a user, I can enter an ISRC as reference
    Given I am a logged in user
    And I click new mastering project
    And I have added a file
    When I enter information into the ISRC
    And I press NEXT
    And I press BACK
    Then ISRC information is saved
