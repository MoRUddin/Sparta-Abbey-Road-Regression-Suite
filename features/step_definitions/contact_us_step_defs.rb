Before do
  @contact_us = contact_us
  @studio_one = ar_studio_one
end

Given("I am on the studio 1 page") do
  @contact_us.visit_url("https://stage.abbeyroad.com/studio-one")
end

Then("I can see the studio's address") do
  expect(@contact_us.abbey_road_address).to eq true
end

Given("I am on the studio one homepage") do
  @studio_one.visit_studio_one
end

Then("I can view an integration of google maps") do
  expect(@studio_one.check_for_iframe).to eq true
end

Then("I can see it points to Abbey Road Studios address by default") do
  expect(@studio_one.check_default_location).to include "Abbey%20Road%20Studios"
end
