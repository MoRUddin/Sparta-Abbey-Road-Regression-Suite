Feature: Project dashboard
  # Scenario: As a user I can select the NEW MASTERING PROJECT button from the projects tab
  #   Given I am a logged in user
  #   And I am on projects tab
  #   When I click new mastering project
  #   Then I am redirected to entering new mastering project details
  #
  # Scenario: As a logged in user I can click one of the START PROJECT buttons to start a new mixing project
  #   Given I am a logged in user
  #   And I have clicked online mixing
  #   When I click the start project button
  #   Then I am redirected to the online mixing upload page
  #
  # Scenario: As a user, I can select NEW MIXING PROJECT button from projects tab
  #   Given I am a logged in user
  #   And I am on projects tab
  #   When I click new mixing project
  #   Then I am redirected to entering new mixing project details
  #
  # Scenario: As a user I can click TRACKS and view all user tracks
  #   Given I am a logged in user
  #   When I click on the tracks tab
  #   And I am redirected to the tracks where I can see my uploaded tracks
  #   And I am on projects tab
  #   When I click new mixing project
  #   Then I am redirected to entering new mixing project details
  #
  # Scenario: As a User, I can select to fast track my project
  #   Given I am a logged in user
  #     And I click new mastering project
  #     And I click on extra options section
  #   When I select fast track
  #   Then The remove from basket option appears
  #
  # Scenario: As a User, I can select/deselect a specific engineer on my project
  #   Given I am a logged in user
  #     And I click new mastering project
  #     And I click on engineers section
  #   When I click pick on one Alex Gordon
  #   Then the engineers pick button turns to a red remove button

  Scenario: As a User, I can select additional formats and add it to my order
    Given I am a logged in user
      And I click new mastering project
      And I have added a file
      And I click on extra formats section
    When I click add to basket on the DDPi download
      And I select the track to apply it to
      And I check the confirmation checkbox
      And I click "save"
    Then the remove from basket option appears

  #DO NOT RUN BELOW SCENARIO - ONLY FOR DEMONSTRATION (Test can only be run once)
  # Scenario: As a user I can enter my billing address so that I can place my order
  #   Given I am a logged in user
  #     And I am on projects tab
  #     And I can see all my projects
  #   When I click make payment on the projects tab
  #     And I fill in billing details
  #   When I click place your order on the billing page
  #     And I fill in payment details
  #   Then I click make payment on the checkout page
  #   And I should be redirected to the payments confirmation page
