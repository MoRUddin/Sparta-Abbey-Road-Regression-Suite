Before do
  @contact_us = contact_us
end

Given("I am on the studio 1 page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/studio-one")
end

Then("I can see the studio's address") do
  expect(@contact_us.abbey_road_address).to eq true
end

Then("I can view an integration of google maps") do
  expect(@contact_us.check_for_iframe).to eq true
end

Then("I can see it points to Abbey Road Studios address by default") do
  expect(@contact_us.check_default_location).to include "Abbey%20Road%20Studios"
end

When("I try to send a message that's missing a required fields") do
  @contact_us.click_send_message_button 'Send message'
end

Then("I recieve error messages") do
  expect(@contact_us.find_message_error).to eq 'Please enter your message'
  expect(@contact_us.find_name_error).to eq 'Please enter your name'
  expect(@contact_us.find_email_error).to eq 'Please enter a valid email address'
end
