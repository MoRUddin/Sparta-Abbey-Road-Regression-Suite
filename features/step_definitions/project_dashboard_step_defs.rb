Before do
  @live_feed = ar_live_feed
  @homepage = ar_homepage
  @google = google_search
  @email = temp_email
  @project_dashboard = ar_p_dashboard
  @reg = ar_registration
  current_window.resize_to(1280,960)
end

Given("I am a logged in user") do
  @reg.visit_registration_page
  @reg.fill_in_login_form("sp_ar_test@yahoo.com","Thisissparta1")
  click_button_by_text "Login"
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

When("I click on the tracks tab") do
  @project_dashboard.click_track_link
end

Then("I am redirected to the tracks where I can see my uploaded tracks") do
  sleep 1
  expect(get_url).to eq "https://stagemy.abbeyroad.com/tracks"
end

Given("I am on the online mastering page") do
  @project_dashboard.visit_mastering
end

When('I click "Upload track"') do
  click_link_by_text("Upload track")
end

Given("I click on extra options section") do
  click_link_by_text "Extra Options"
end

When("I select fast track") do
  @project_dashboard.add_fast_track_to_basket
  sleep 1
end

Then("The remove from basket option appears") do
  expect(@project_dashboard.check_added_to_basket).to eq "item selected"
end

Given("I click on engineers section") do
  @project_dashboard.click_engineer_option
end

When("I click pick on one Alex Gordon") do
  sleep 1
  @project_dashboard.click_first_engineer
end

Then("the engineers pick button turns to a red remove button") do
  expect(@project_dashboard.get_selected_engineer_colour).to eq "rgba(215, 25, 32, 1)"
end

When("I click make payment on the projects tab") do
  @project_dashboard.click_checkout_project
end

When("I fill in billing details") do
  @project_dashboard.fill_in_billing_details(Faker::Name.name,Faker::Address.street_address,Faker::Address.secondary_address,Faker::Address.city,Faker::Address.community,Faker::Address.postcode)
end

When("I click place your order on the billing page") do
  sleep 2
  click_button_by_text "Place your order"
end

When("I fill in payment details") do
  @project_dashboard.fill_in_payment_details(Faker::Name.name,"08/15","08/25",File.read("features/assets/card_number.txt"),"111")
end

Then("I click make payment on the checkout page")do
  click_button_by_text "Make payment"
end

When("I am on the project notes page") do
  click_link_by_text "Project notes"
end

When("I add the project title") do
  fill_field_with_text("name", "Test Title")
end

When("I add project notes") do
  fill_field_with_text("notes", "Test Text")
end

When("I click NEXT") do
  click_link_by_text('Next')
end

When("I click BACK") do
  click_link_by_text('Back')
end

Then("The project notes are filled in") do
  expect(@project_dashboard.check_note_title_text).to eq "Test Title"
end

And("The project title is filled in") do
  expect(@project_dashboard.check_note_text_area_text).to eq "Test Text"
end

Then("I can see all my projects") do
  expect(@project_dashboard.read_project_number_text).to be > 0
end

Given("I have added a file") do
  @project_dashboard.check_audio_checkbox
end

When("I enter information into the ISRC") do
  fill_field_with_text("isrc", "0101010101010")
end

When("I press NEXT") do
  click_button_by_text('Next')
end

When("I press BACK") do
  click_link_by_text('Back')
end

Then("ISRC information is saved") do
  expect(@project_dashboard.read_isrc_text).to eq '0101010101010'
end

Then("I should be redirected to the payments confirmation page") do
  sleep 1
  expect(get_url).to include "/payment?valid=true&trans_id="
end

When("I uncheck the uploaded checkbox") do
  sleep 1
  @project_dashboard.uncheck_uploaded_checkbox
end

Then("The uploaded tracks should disappear from the list") do
  sleep 1
  if @project_dashboard.check_if_tracks_are_present
    @project_dashboard.track_status.each do |track|
      expect(track).not_to eq "Uploaded"
    end
  end
end

Given("I click on extra formats section") do
  click_link_by_text "Extra formats"
end

When("I click add to basket on the DDPi download") do
  @project_dashboard.add_ddpi_to_basket
end

When("I select the track to apply it to") do
  sleep 1
  @project_dashboard.click_all_ddpi_tracks
end

When("I check the confirmation checkbox") do
  @project_dashboard.click_confirm_ddpi
end

When('I click "save"') do
  click_link_by_text 'Save'
end

Then("The remove from basket option appears on the DDPI option") do
  sleep 2
  expect(@project_dashboard.check_added_to_basket).to eq "item selected"
end

When("I click the help tab") do
  @project_dashboard.click_help_tab
end

Then("I am taken to the help page") do
  sleep 1
  expect(get_url).to eq "https://stage.abbeyroad.com/help"
end

When("I click account category") do
  click_link_by_text 'Account'
  sleep 1
end

Then("I am redirected to help-account page") do
  expect(get_url).to eq "https://stage.abbeyroad.com/help/account"
end

Given("I have added two project files") do
  @project_dashboard.check_audio_checkbox
  @project_dashboard.check_audio_checkbox_second_file
end

When("I click add to basket on the LP album") do
  @project_dashboard.add_lp_to_basket
end

When("I drag a track to side B") do
  @project_dashboard.drag_to_side_b
end

Then("the remove from basket option appears") do
  sleep 1
  expect(@project_dashboard.check_lp_added_to_basket).to eq "item selected"
end

When('I check the "use same as billing address" checkbox') do
  @project_dashboard.click_shipping_as_billing_checkbox
end
