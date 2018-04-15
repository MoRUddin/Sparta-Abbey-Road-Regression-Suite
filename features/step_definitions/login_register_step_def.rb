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
  @registration.click_button_by_text "Register"
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

When("I click my username") do
  @registration.click_username_link
end

When("I click logout") do
  @registration.click_button_by_text "Log out"
end

Then("I am redirected to the login page") do
  @project_dashboard.find_all_links
  expect(@registration.get_url).to include "https://stagemy.abbeyroad.com/account/login"
end

When("I access the email and account management") do
  @project_dashboard.click_settings_tab
end

When("I change username") do
  @random_name = Faker::Name.name
  @project_dashboard.fill_field_with_text("Name",@random_name)
end

When("I click confirm") do
  @project_dashboard.click_button_by_text("Save changes")
end

Then("my details should be changed") do
  expect(@project_dashboard.get_settings_name).to eq @random_name
end
