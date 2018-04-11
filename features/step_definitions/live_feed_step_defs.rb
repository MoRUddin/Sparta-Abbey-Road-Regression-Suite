Before do
  @google = google_search
  @live_feed = ar_live_feed
  @homepage = ar_homepage
end

Given("I am on Google's search page") do
  @google.visit_google
end

When('I search "Abbey Road Crossing"') do
  @google.fill_search_field "Abbey Road Crossing"
end

When('I search "Abbey Road Studios"') do
  @google.fill_search_field "Abbey Road Studios"
end

When('I click the link "Visit Abbey Road Studios"') do
  @google.click_search_result "Visit Abbey Road Studios"
end

Then("I am redirected to the Live Feed Page") do
  expect(@live_feed.this_url).to eq("https://www.abbeyroad.com/crossing")
end

Given("I am on the Live Feed Page") do
  @live_feed.visit_live_feed
end

When("I click one of the time tabs") do
  @random_tab = @live_feed.random_tab_selector
  @live_feed.get_nth_time(@random_tab).click
end

Then("the feed plays from that selected point") do
  expect(@live_feed.convert_to_time(@live_feed.get_current_video_time)).to be_between(@live_feed.convert_to_time(@live_feed.get_nth_time(@random_tab).text),@live_feed.convert_to_time(@live_feed.get_nth_time(@random_tab+1).text))
end

When("I click the live time tab") do
  @live_feed.get_time_tabs.last.click
end

Then("the feed plays from live") do
  expect(@live_feed.get_live_status).to include "LIVE"
end

Given("I am on Abbey Road's homepage") do
  @homepage.visit_ar_homepage
end

When('I click "Visit Us"') do
  @homepage.go_to_live_feed_page
end

When('I click "Abbey Road Studios: The Most Famous Recording Studios"') do
  @google.click_search_result("Abbey Road Studios: The Most Famous Recording Studios")
end

Then("I am redirected to the Homepage") do
  expect(@live_feed.this_url).to eq("https://www.abbeyroad.com/")
end

Then("that tab turn red") do
  expect(@live_feed.get_selected_time_colour).to eq "rgba(215, 25, 32, 1)"
end

Then("it should be defaulted to the live feed") do
  pending
end

Then("I can see the 6 images on the Wall of Fame") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the images are in chronological order") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the share button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a modal appears to share the image") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the sharing modal") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click the email button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I fill in my name") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I fill in the email from") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I fill in the email to") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click send") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an email") do
  pending # Write code here that turns the phrase above into concrete actions
end
