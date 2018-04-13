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

  # Scenario: As a user I can click TRACKS and view all user tracks
  #   Given I am a logged in user
  #   When I click on the tracks tab
  #   Then I am redirected to the tracks where I can see my uploaded tracks

  Scenario: As a user, I can go to SETTINGS to manage linked logins
    Given I am a logged in user
    And I am on the settings tab
    And I click manage accounts
    When I click Facebook
    And I log in with my Facebook details and click enter
    Then I am taken back to the manage accounts page with a linked Facebook
