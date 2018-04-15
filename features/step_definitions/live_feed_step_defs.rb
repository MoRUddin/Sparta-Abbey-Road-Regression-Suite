Before do
  @live_feed = ar_live_feed
  @homepage = ar_homepage
  @google = google_search
  @email = temp_email
  @project_dashboard = ar_p_dashboard
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
  expect(@live_feed.this_url).to eq "https://www.abbeyroad.com/crossing"
end

Then("I am redirected to the Stage Live Feed Page") do
  @live_feed.get_time_tabs # Alternative to sleep
  expect(@live_feed.this_url).to eq "https://stage.abbeyroad.com/crossing"
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
  @google.click_search_result "Abbey Road Studios: The Most Famous Recording Studios"
end

Then("I am redirected to the Homepage") do
  expect(@live_feed.this_url).to eq "https://www.abbeyroad.com/"
end

Then("that tab turn red") do
  expect(@live_feed.get_selected_time_colour).to eq "rgba(215, 25, 32, 1)"
end

Then("I can see the 6 images on the Wall of Fame") do
  expect(@live_feed.get_wall_image_count).to eq 6
end

Then("the images are in chronological order") do
  expect(@live_feed.is_wall_chronological).to eq true
end

When("I click the share button") do
  @live_feed.click_button_text "Share post"
end

Then("a modal appears to share the image") do
  sleep 1
  expect(@live_feed.share_modal_button_visible).to be true
end

Given("I have an email") do
  @email.visit_homepage
  @email.save_address
end

Given("I click the email button") do
  @live_feed.click_envelope
end

Given("I fill in my name") do
  @live_feed.fill_in_modal_name "name"
end

Given("I fill in the email from") do
  @live_feed.fill_in_email_from @email.email_address
end

Given("I fill in the email to") do
  @live_feed.fill_in_email_to @email.email_address
end

Given("I click send") do
  @live_feed.click_button_text "Send"
end

Then("I receive an email") do
  @email.visit_homepage
  @email.get_first_email
  expect(@email.get_sender).to eq "donotreply@abbeyroad.com"
end

When("I click Post") do
  @live_feed.click_button_text "Post"
end

Then("I am shown an error modal") do
  expect(@live_feed.error_modal_button_visible).to be true
end
