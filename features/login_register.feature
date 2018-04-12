Feature: Register Login page

Scenario: As a User, I can register
  Given I have an email
    And I am on the Register Login page
  When I enter all correct and valid details,
    And I click signup,
  Then I am redirected to the project dashboard.
    And I recieve a verification email
    And clicking the link redirects to the confirmation page
