Before do
  @live_feed = ar_live_feed
  @homepage = ar_homepage
  @google = google_search
  @email = temp_email
  @project_dashboard = ar_p_dashboard
  @reg = ar_registration
end

Then("I am redirected to online mixing") do
  expect(@homepage.get_url).to eq "https://stage.abbeyroad.com/online-mixing"
end
