Before do
  @registration = ar_registration
end

Given("I am on the Register Login page") do
  @registration.visit_registration_page
end

When("I enter all correct and valid details,") do
  @registration.fill_in_register_form "Test1erdd6655454", "Test@testterergtesting.com", "PASSWORD321w"
end

When("I click signup,") do
  @registration.click_button_by_text "Register"
end

Then("I am redirected to the project dashboard.") do
  expect(@registration.get_url).to eq "https://stagemy.abbeyroad.com/projects"
end

When("I click my username") do
  @registration.click_username_link
end

When("I click logout") do
  @registration.click_button_by_text "Log out"
end

Then("I am redirected to the login page") do
  expect(@registration.get_url).to eq "https://stagemy.abbeyroad.com/account/login?ReturnUrl=%2F"
end
