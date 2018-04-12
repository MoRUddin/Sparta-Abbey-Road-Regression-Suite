Before do
  @registration = ar_registration
end

Given("I am on the Register Login page") do
  @registration.visit_registration_page
end

When("I enter all correct and valid details,") do
  @registration.fill_in_register_form "Test12345454", "Test@testingtesting.com", "PASSWORD321w"
end

When("I click signup,") do
  @registration.click_register_button "Register"
end

Then("I am redirected to the project dashboard.") do
  expect(@registration.get_url).to be "https://stagemy.abbeyroad.com/projects"
end
