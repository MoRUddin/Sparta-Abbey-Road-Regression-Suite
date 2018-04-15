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
