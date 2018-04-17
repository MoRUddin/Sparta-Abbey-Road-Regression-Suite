Feature: Contact Us
  Scenario: As a user in the contact us section, I can see the studio's address.
    Given I am on the studio 1 page
    Then I can see the studio's address

  Scenario: As a user I should be able to see the correct location of Abbey Road Studios on the google maps in the contact us section
    Given I am on the studio 1 page
    Then I can view an integration of google maps
    And I can see it points to Abbey Road Studios address by default
