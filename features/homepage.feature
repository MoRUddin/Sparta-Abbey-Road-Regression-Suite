Feature: Homepage
  # Scenario: As a User from the homepage, I can access online mixing through the online services tab.
  #   Given I am on Abbey Road's homepage
  #   When I move my mouse over "online services"
  #     And I click "online mixing"
  #   Then I am redirected to online mixing
  #
  # Scenario: As a User from the homepage, I can access online mastering through the online services tab.
  #   Given I am on Abbey Road's homepage
  #   When I move my mouse over "online services"
  #     And I click "online mastering"
  #   Then I am redirected to online mastering

  Scenario: As I user I should see twitter embedded on the Homepage
    Given I am on Abbey Road's homepage
    Then I can view their twitter feed
