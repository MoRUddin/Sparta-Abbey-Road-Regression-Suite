class ProjectDashboard
  include Capybara::DSL

  PROJECTS_URL = "https://stagemy.abbeyroad.com/projects"
  MIXING_URL = "https://stage.abbeyroad.com/online-mixing"
  MASTERING_URL = "http://stage.abbeyroad.com/online-mastering"
  NEW_MASTERING = "New Mastering Project"
  NEW_MASTERING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div[1]/div/div[1]/h5'
  NEW_MIXING = "New Mixing Project"
  NEW_MIXING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div/div/div[1]/h5'
  START_MIXING_PROJECT_BTN = "Start Project"
  CLICK_TRACK_LINK = '//*[@id="holder"]/main/div/div[2]/div/div[2]/ul/li[2]/a'
  ADD_TO_BASKET_XPATH= '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div/div[1]/div/div/button'
  CHECK_ADDED_TO_BASKET_XPATH= '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div/div[1]/div/div'
  SETTINGS_TAB_XPATH = '//*[@id="holder"]/main/div/div[2]/div/div[2]/ul/li[3]/a'
  SETTINGS_NAME_FIELD = "#Name"
  PROJECT_DISPLAY = "div.project"
  BILLING_FORM_SCOPE = '//*[@id="billingAddress"]'
  PAYMENTS_FORM_SCOPE = '//*[@id="holder"]'
  TITLE_NOTE_FIELD = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/input'
  TEXT_NOTE_FIELD = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/textarea'
  PROJECT_NUMBER_TEXT = 'div.projects'
  CARD_TYPE_SELECTOR = '//*[@id="holder"]/main/div/div[2]/div/div[2]/div/div[1]/div/div/form/div/div[1]/div[2]/div/div'
  VISA_OPTION = '//*[@id="holder"]/main/div/div[2]/div/div[2]/div/div[1]/div/div/form/div/div[1]/div[2]/div/div/div[3]/div/ul/li[1]'
  ENGINEERS_OPTION = '//*[@id="holder"]/main/div/div[2]/div[1]/div/div/div/ul/li[3]/a/span'
  FIRST_ENGINEERS_OPTION = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/button'
  SELECTED_CLASS = ".engineers .item.selected button"
  AUDIO_CHECKBOX = '//*[@id="existing"]/div[1]/div/label/span'
  ISRC_TEXT = '//*[@id="tracks"]/div/div[1]/div/div[2]/div/input'

  UPLOADED_CHECKBOX = '//*[@id="types"]/li[3]/label/span'

  DDPI_XPATH_BUTTON = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div/button[1]'
  DDPI_CHECKBOX = "span.label"
  HELP_TAB = '//*[@id="holder"]/main/div/div[2]/div/div[2]/ul/li[4]/a'

  def click_button_by_text button_text
    click_button button_text
  end
  def click_link_by_text link_text
    click_link link_text
  end
  def visit_projects
    visit(PROJECTS_URL)
  end
  def visit_mixing
    visit(MIXING_URL)
  end
  def visit_mastering
    visit(MASTERING_URL)
  end
  def click_new_mastering
    find_link(NEW_MASTERING).click
  end
  def verify_new_mastering
    if find(:xpath, NEW_MASTERING_PROJECT).text == "Existing Tracks"
      return true
    else
      return false
    end
  end
  def verify_new_mixing
    if find(:xpath, NEW_MIXING_PROJECT).text == "Uploaded Tracks"
      return true
    else
      return false
    end
  end
  def find_all_links
    all("a")
  end
  def add_fast_track_to_basket
    find(:xpath, ADD_TO_BASKET_XPATH).click
  end
  def check_added_to_basket
    find(:xpath, CHECK_ADDED_TO_BASKET_XPATH)["class"]
  end
  def click_new_mixing
    find_link(NEW_MIXING).click
  end
  def start_mixing_project
    find_link(START_MIXING_PROJECT_BTN).click
  end
  def find_track_link
    find(:xpath, CLICK_TRACK_LINK)
  end
  def click_track_link
    find_track_link.click
  end
  def get_url
    current_url
  end
  def click_settings_tab
    find(:xpath, SETTINGS_TAB_XPATH).click
  end
  def fill_field_with_text(field_selector,text)
    fill_in(field_selector,with: text)
  end
  def get_settings_name
    find(SETTINGS_NAME_FIELD)["value"]
  end
  def click_checkout_project
    all(PROJECT_DISPLAY)[-4].find("a").click #change to last non purchased project
  end
  def fill_in_billing_details name, address1, address2, city, county, postcode
    within(:xpath, BILLING_FORM_SCOPE) do
      fill_in 'Addressee', :with => name
      fill_in 'Address1', :with => address1
      fill_in 'Address2', :with => address2
      fill_in 'City', :with => city
      fill_in 'County', :with => county
      fill_in 'Postcode', :with => postcode
      find(:xpath, '//*[@id="billingAddress"]/div[7]/div').click #click dropdown
      all("ul.selectric-group")[0].all("li")[1].click #click UK
    end
  end
  def fill_in_payment_details cardholder_name, start_date, expiry_date, card_number, security_code
    within(:xpath, PAYMENTS_FORM_SCOPE) do
      fill_in 'customer', :with => cardholder_name
      fill_in 'start_date', :with => start_date
      fill_in 'expiry', :with => expiry_date
      fill_in 'card_no', :with => card_number
      fill_in 'cv2', :with => security_code
      find(:xpath,CARD_TYPE_SELECTOR).click
      find(:xpath,VISA_OPTION).click
    end
  end
  def check_note_title_text
    find(:xpath, TITLE_NOTE_FIELD).value
  end
  def check_note_text_area_text
    find(:xpath, TEXT_NOTE_FIELD).text
  end
  def read_project_number_text
  find(PROJECT_NUMBER_TEXT)['data-count'].to_i
  end
  def click_engineer_option
    find(:xpath, ENGINEERS_OPTION).click
  end
  def click_first_engineer
    find(:xpath, FIRST_ENGINEERS_OPTION).click
  end
  def get_selected_engineer_colour
    find(SELECTED_CLASS).native.css_value('background-color')
  end
  def check_audio_checkbox
    find(:xpath, AUDIO_CHECKBOX).click
  end
  def read_isrc_text
    find(:xpath, ISRC_TEXT).value
  end
  def uncheck_uploaded_checkbox
    find(:xpath, UPLOADED_CHECKBOX).click
  end
  def get_uploaded_track
    ('div[data-type = "Uploaded"]')
  end
  def check_if_tracks_are_present
    find("#existing").has_selector?("div.track")
  end
  def track_status
    arr = []
    all("div.track").each do |track|
      arr.push(track["data-type"])
    end
    arr
  end
  def add_ddpi_to_basket
    find(:xpath,DDPI_XPATH_BUTTON).click
  end
  def click_all_ddpi_tracks
    checks = all(DDPI_CHECKBOX)
    (0..checks.length-2).each do |i|
      checks[i].click
    end
  end
  def click_confirm_ddpi
    all(DDPI_CHECKBOX).last.click
  end

  def click_help_tab
    find(:xpath, HELP_TAB).click
  end
end
