Before do
 @contact_us = contact_us
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
