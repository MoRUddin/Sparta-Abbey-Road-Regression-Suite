Before do
  @registration = ar_registration
  @email_bak = temp_email_bak
end

Given("I can get an email") do
  @email_bak.visit_homepage
  @email_bak.save_address
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
