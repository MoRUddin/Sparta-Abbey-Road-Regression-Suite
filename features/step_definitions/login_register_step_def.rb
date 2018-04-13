Before do
  @registration = ar_registration
  @email = temp_email
end

Given("I am on the Register Login page") do
  @registration.visit_registration_page
end

When("I enter all correct and valid details,") do
  @registration.fill_in_register_form "TestingName", @email.email_address, "PASSWORD321w"
end

When("I click signup,") do
  @registration.click_register_button "Register"
end

Then("I am redirected to the project dashboard.") do
  expect(@registration.get_url).to eq "https://stagemy.abbeyroad.com/projects"
end

Then("I recieve a verification email") do
  @email.visit_homepage
  @email.get_first_email
  expect(@email.get_subject).to eq "Verify your Abbey Road account"
end

Then("clicking the link redirects to the confirmation page") do
  @email.visit_url(@email.get_validation_link)
  expect(@email.get_url).to include "https://stagemy.abbeyroad.com/account/confirmemail?userId"
end
