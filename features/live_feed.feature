Feature: Live Feed
  Scenario: As a User, I can go to the Visit Us page using a link from Google, so that I can reach the crossing feed directly.
    Given I am on Google's search page
    When I search "Abbey Road Crossing"
      And I click the link "Visit Abbey Road Studios"
    Then I am redirected to the Live Feed Page

  Scenario: As a User, I can click on any archived time, so that I can see a video starting from that point.
    Given I am on the Live Feed Page
    When I click one of the time tabs
    Then the feed plays from that selected point

  Scenario: As a User, I can click on live, so that I can see a video starting from that point.
    Given I am on the Live Feed Page
      And I click one of the time tabs
    When I click the live time tab
    Then the feed plays from live

  Scenario: As a User, I can go to the homepage directly and navigate to the Live Feed by Visit Us so that I can view the crossing feed.
    Given I am on Abbey Road's homepage
    When I click "Visit Us"
    Then I am redirected to the Live Feed Page

  # Scenario: As A User, I can Input 'Abbey Road', and use first link from Google, so that I can reach the homepage and view the website.
  #   Given I am on Google's search page
  #   When I search "Abbey Road Studios"
  #     And I click "Abbey Road Studios: The Most Famous Recording Studios"
  #   Then I am redirected to the Homepage
  #
  # Scenario: As a User, I can click on any archived time and live, and see the button I selected change to red, so that I know when I am viewing the feed from.
  #   Given I am on the Live Feed Page
  #   When I click one of the time tabs
  #   Then that tab turn red
  #
  Scenario: As a User, I can see the live crossing feed by default, so that I can see the most recent feed instantly.
    Given I am on the Live Feed Page
    Then the feed plays from live
  #
  # Scenario: As a User, I can view the most recent 6 images for Hall of Fame.
  #   Given I am on the Live Feed Page
  #   Then I can see the 6 images on the Wall of Fame
  #     And the images are in chronological order
  #
  # Scenario: As a User, I can use the Share option, on an archived time or the live feed and a modal appears.
  #   Given I am on the Live Feed Page
  #   When I click the share button
  #   Then a modal appears to share the image
  #
  # Scenario: As a User, from the modal, I can share the image via email
  #   Given I am on the sharing modal
  #     And I click the email button
  #     And I fill in my name
  #     And I fill in the email from
  #     And I fill in the email to
  #     And I click send
  #   Then I receive an email

  # Scenario: As a User, in the modal I can share via Facebook
  # Scenario: As a User, in the modal I can share via Twitter
  # Scenario: As a User, in the modal I can share via Pinterest
  # Scenario: As a User, in the modal I can share via Google Plus
  # Scenario: As a User, from the modal, I can post to the wall of fame
  # Scenario: As a User, from the modal, I can download the image
  # Scenario: As a User, from the modal, if I try to submit without a name, then I get an error
