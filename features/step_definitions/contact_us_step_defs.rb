Before do
  @contact_us = contact_us
  @email_bak = temp_email_bak
  current_window.resize_to(1280,960)
end

Given("I am on the studio 1 page") do
  visit_url("https://stage.abbeyroad.com/studio-one")
end

Then("I can see the studio's address") do
  expect(@contact_us.abbey_road_address).to eq true
end

When("I enter an invalid email") do
  fill_field_with_text("newsletterEmail",Faker::Name.name)
end

When('I click "Join"') do
  click_button_by_text "Join"
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


When("I try to send a message that's missing a required fields") do
  click_button_by_text 'Send message'
end

Then("I recieve error messages") do
  expect(@contact_us.find_message_error).to eq 'Please enter your message'
  expect(@contact_us.find_name_error).to eq 'Please enter your name'
  expect(@contact_us.find_email_error).to eq 'Please enter a valid email address'
end

Given("I am on the studio 2 page") do
  visit_url("https://stage.abbeyroad.com/studio-two")
end

Given("I am on the studio 3 page") do
  visit_url("https://stage.abbeyroad.com/studio-three")
end

Given("I am on the Recording & Mixing page") do
  visit_url("https://stage.abbeyroad.com/recording-mixing")
end

Given("I am on the Mastering page") do
  visit_url("https://stage.abbeyroad.com/mastering")
end

Given("I am on the live feed page") do
  visit_url("https://stage.abbeyroad.com/crossing")
end

Then("I can see the point of contact's picture") do
  expect(@contact_us.read_contact_picture).to be true
end

Then("Their name") do
  expect(@contact_us.read_contact_name).to be true
end

Then("Their job title") do
  expect(@contact_us.read_contact_title).to be true
end

Then("Their phone number") do
  expect(@contact_us.read_contact_number).to be true

end

Given("I have a valid email") do
  @email_bak.visit_homepage
  @email_bak.save_address
end

When("I enter a valid email") do
  fill_field_with_text("newsletterEmail",@email_bak.email_address)
end

Then("I receive a confirmation message") do
  expect(@contact_us.email_verification_present).to eq true
end

When("I input my name") do
  @contact_us.type_name_in_contact_section
end

When("I enter my email") do
  @contact_us.type_email_in_contact_section
end

When("I enter my message") do
  @contact_us.type_message_in_contact_section
end

When("I successfully send the message") do
  click_button_by_text "Send message"
end

Then("I see a div with a confirmation message") do
  expect(@contact_us.confirmation_contact_section).to eq true
end
