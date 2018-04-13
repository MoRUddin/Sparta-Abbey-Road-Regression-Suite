Feature: Project dashboard
  Scenario: As a user I can select the NEW MASTERING PROJECT button from the projects tab
    Given I am a logged in user
    And I am on projects tab
    When I click new mastering project
    Then I am redirected to entering new mastering project details

  Scenario: As a logged in user I can click one of the START PROJECT buttons to start a new mixing project
    Given I am a logged in user
    And I have clicked online mixing
    When I click the start project button
    Then I am redirected to the online mixing upload page

  Scenario: As a user, I can select NEW MIXING PROJECT button from projects tab
    Given I am a logged in user
    And I am on projects tab
    When I click new mixing project
    Then I am redirected to entering new mixing project details

  Scenario:
    Given I am a logged in user
    And I click new mastering project
    And I click on extra options section
    When I select fast track
    Then The remove from basket option appears
