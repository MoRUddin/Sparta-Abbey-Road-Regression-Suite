Before do
  @live_feed = ar_live_feed
  @homepage = ar_homepage
  @google = google_search
  @email = temp_email
  @project_dashboard = ar_p_dashboard
  @reg = ar_registration
end

When('I move my mouse over "online services"') do
  @homepage.hover_over_online_services
end

When('I click "online mixing"') do
  @homepage.click_online_mixing
end

Then("I am redirected to online mixing") do
  sleep 1
  expect(@homepage.get_url).to eq "https://stage.abbeyroad.com/online-mixing"
end

When('I click "online mastering"') do
  @homepage.click_online_mastering
end

Then("I am redirected to online mastering") do
  sleep 1
  expect(@homepage.get_url).to eq "https://stage.abbeyroad.com/online-mastering"
end

Then("I can view their twitter feed") do
  expect(@homepage.check_for_twitter_embedded).to eq true
end

Then("I can view their 3 youtube videos") do
  expect(@homepage.check_for_youtube_embedded(3)).to eq true
end

Then("I can view their instagram feed") do
  expect(@homepage.check_for_instagram_embedded).to eq true
end

Then("I can view 6 images on instagram feed") do
expect(@homepage.count_instagram_images).to have_selector("img", count: 6)
end
