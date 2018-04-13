Before do
  @live_feed = ar_live_feed
  @homepage = ar_homepage
  @google = google_search
  @email = temp_email
  @project_dashboard = ar_p_dashboard
  @reg = ar_registration
end

Given("I am a logged in user") do
  @reg.visit_registration_page
  @reg.fill_in_login_form("sp_ar_test@yahoo.com","Thisissparta1")
  @registration.click_button_by_text "Login"
end

Given("I am on projects tab") do
  @project_dashboard.visit_projects
end

When("I click new mastering project") do
  @project_dashboard.click_new_mastering
end

Then("I am redirected to entering new mastering project details") do
  expect(@project_dashboard.verify_new_mastering).to be true
end

Given("I have clicked online mixing") do
  @project_dashboard.visit_mixing
end


When("I click the start project button") do
  @project_dashboard.start_mixing_project
end

Then("I am redirected to the online mixing upload page") do
  expect(@project_dashboard.verify_new_mixing).to be true
end

When("I click new mixing project") do
  @project_dashboard.click_new_mixing
end

Then("I am redirected to entering new mixing project details") do
  expect(@project_dashboard.verify_new_mixing).to be true
end

Given("I click on extra options section") do
  @project_dashboard.click_link "Extra Options"
end

When("I select fast track") do
  @project_dashboard.add_fast_track_to_basket
  sleep 1
end

Then("The remove from basket option appears") do
  expect(@project_dashboard.check_added_to_basket).to eq "item selected"
end
