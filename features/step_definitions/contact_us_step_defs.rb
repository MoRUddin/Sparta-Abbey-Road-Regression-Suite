Before do
  @contact_us = contact_us
  @email_bak = temp_email_bak
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

When('I click "Join"') do
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

Given("I am on the studio 2 page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/studio-two")
end

Given("I am on the studio 3 page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/studio-three")
end

Given("I am on the Recording & Mixing page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/recording-mixing")
end

Given("I am on the Mastering page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/mastering")
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
  @contact_us.fill_field_with_text("newsletterEmail",@email_bak.email_address)
end

Then("I receive a confirmation message") do
  expect(@contact_us.email_verification_present).to eq true
end
