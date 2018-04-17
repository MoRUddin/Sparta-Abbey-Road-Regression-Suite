Feature: Contact Us
  Scenario: As a user I should be able to see the correct location of Abbey Road Studios on the google maps in the contact us section
    Given I am on the studio one homepage
    Then I can view an integration of google maps
    And I can see it points to Abbey Road Studios address by default
