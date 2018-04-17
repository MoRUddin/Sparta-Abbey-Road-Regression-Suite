Feature: Contact Us
  # Scenario: As a user in the contact us section, I can see the studio's address.
  #   Given I am on the studio 1 page
  #   Then I can see the studio's address

  Scenario: As a user I can only enter a valid email into the newsletter sign up, else be rejected
    Given I am on the studio 1 page
    When I enter an invalid email
    Then I am given a verification error message
