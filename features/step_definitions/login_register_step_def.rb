Before do
  @registration = ar_registration
end

Given("I am on the Register Login page") do
  @registration.visit_registration_page
end

When("I enter all correct and valid details,") do
  @registration.fill_in_register_form "Test123"
  # @registration.fill_in_email_field "Test123@123.com"
  # @registration.fill_in_email_confirm_field "Test123@123.com"
  # @registration.fill_in_password_field "PASSWORD321"
  # @registration.fill_in_password_confirm_field "PASSWORD321"
end

When("I click signup,") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am redirected to the project dashboard.") do
  pending # Write code here that turns the phrase above into concrete actions
end
