# Feature: Contact Us
#   Scenario: As a user in the contact us section, I can see the studio's address.
#     Given: I am on the studio 1 page
#     Then: I can see the studio's address
#
#   Scenario: As a user, in the the CONTACT US section on Studio 1 page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the studio 1 page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user, in the the CONTACT US section on Studio 2 page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the studio 2 page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user, in the the CONTACT US section on Studio 3 page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the studio 3 page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user, in the the CONTACT US section on Recording & Mixing page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the Recording & Mixing page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user, in the the CONTACT US section on Mastering page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the Mastering page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user I can only enter a valid email into the newsletter sign up, else be rejected
#     Given I am on the studio 1 page
#     When I enter an invalid email
#       And I click "Join"
#     Then I am given a verification error message
#
#   Scenario: As a user I should be able to see the correct location of Abbey Road Studios on the google maps in the contact us section
#     Given I am on the studio 1 page
#     Then I can view an integration of google maps
#     And I can see it points to Abbey Road Studios address by default
# #
#   # Scenario: As a User on Studio 1, I can send off a message successfully and receive a confirmation message.
#   #   Given I am on the studio 1 page
#   #   When I input my name
#   #     And I enter my email
#   #     And I enter my message
#   #     And I successfully send the message
#   #   Then I see a div with a confirmation message
#   #
#   # Scenario: As a User on Studio 2, I can send off a message successfully and receive a confirmation message.
#   #   Given I am on the studio 2 page
#   #   When I input my name
#   #     And I enter my email
#   #     And I enter my message
#   #     And I successfully send the message
#   #   Then I see a div with a confirmation message
#   #
#   # Scenario: As a User on Studio 3, I can send off a message successfully and receive a confirmation message.
#   #   Given I am on the studio 3 page
#   #   When I input my name
#   #     And I enter my email
#   #     And I enter my message
#   #     And I successfully send the message
#   #   Then I see a div with a confirmation message
#   #
#   # Scenario: As a User on Recording & Mixing page, I can send off a message successfully and receive a confirmation message.
#   #   Given I am on the Recording & Mixing page
#   #   When I input my name
#   #     And I enter my email
#   #     And I enter my message
#   #     And I successfully send the message
#   #   Then I see a div with a confirmation message
#   #
#   # Scenario: As a User on Mastering page, I can send off a message successfully and receive a confirmation message.
#   #   Given I am on the Mastering page
#   #   When I input my name
#   #     And I enter my email
#   #     And I enter my message
#   #     And I successfully send the message
#   #   Then I see a div with a confirmation message
#
#   Scenario: As a user, in the the CONTACT US section on live feed page, I can see the point of contacts picture, name, title, phone number, and email.
#     Given I am on the live feed page
#     Then  I can see the point of contact's picture
#       And  Their name
#       And Their job title
#       And  Their phone number
#
#   Scenario: As a user, when I send a message without required field I recieve an error
#     Given I am on the studio 1 page
#     When I try to send a message that's missing a required fields
#     Then I recieve error messages
#
#   Scenario: As a user, I can sign up to the newsletter and receive confirmation so I know Abbey Road have received it
#     Given I have a valid email
#       And I am on the studio 1 page
#     When I enter a valid email
#       And I click "Join"
#     Then I receive a confirmation message
