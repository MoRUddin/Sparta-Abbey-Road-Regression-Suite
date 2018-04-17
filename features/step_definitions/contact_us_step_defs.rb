Before do
  @studio_one = ar_studio_one
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
