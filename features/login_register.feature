# Feature: Register Login page
#   Scenario: As a User, I can register
#     Given I have an email
#       And I am on the Register Login page
#     When I enter all correct and valid details,
#       And I click signup,
#     Then I am redirected to the project dashboard.
#       And I recieve a verification email
#       And clicking the link redirects to the confirmation page
# 
#   Scenario: As a user I can click my username and logout
#     Given I am a logged in user
#       And I am on Abbey Road's homepage
#     When I click my username
#       And I click logout
#     Then I am redirected to the login page
#
#   Scenario:
#     Given I am on the online mastering page
#     When I click "Upload track"
#     Then I am redirected to the login page
#
#   Scenario: As a logged in User, I can see email/account management so that I can change details
#     Given I am a logged in user
#     When I access the email and account management
#       And I change username
#       And I click confirm
#     Then my details should be changed
