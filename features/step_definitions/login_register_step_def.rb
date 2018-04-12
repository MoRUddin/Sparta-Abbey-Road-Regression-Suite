Before do
  @registration = ar_registration
  @email = temp_email
end

Given("I am on the Register Login page") do
  @registration.visit_registration_page
end

When("I enter all correct and valid details,") do
  @registration.fill_in_register_form "TestingName", @email_bak.email_address, "PASSWORD321w"
end

When("I click signup,") do
  @registration.click_register_button "Register"
end

Then("I am redirected to the project dashboard.") do
  expect(@registration.get_url).to eq "https://stagemy.abbeyroad.com/projects"
end

Then("I recieve a verification email") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("clicking the link redirects to the confirmation page") do
  pending # Write code here that turns the phrase above into concrete actions
end
