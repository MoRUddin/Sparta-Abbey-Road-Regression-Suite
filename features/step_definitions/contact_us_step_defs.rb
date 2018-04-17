Before do
  @contact_us = contact_us
end

Given("I am on the studio 1 page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/studio-one")
end

Then("I can see the studio's address") do
  expect(@contact_us.abbey_road_address).to eq true
end

When("I enter an invalid email") do
  @contact_us.fill_field_with_text("newsletterEmail",Faker::Name.name)
end

When('I click "join"') do
  @contact_us.click_button_by_text "Join"
end

Then("I am given a verification error message") do
  expect(@contact_us.email_error_present).to eq true
end

Then("I can view an integration of google maps") do
  expect(@contact_us.check_for_iframe).to eq true
end

Then("I can see it points to Abbey Road Studios address by default") do
  expect(@contact_us.check_default_location).to include "Abbey%20Road%20Studios"
end
