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
    TITLE_NOTE_FIELD = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/input'
    TEXT_NOTE_FIELD = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/textarea'
    PROJECT_NUMBER_TEXT = 'div.projects'
    AUDIO_CHECKBOX = '//*[@id="existing"]/div[1]/div/label/span'
    ISRC_TEXT = '//*[@id="tracks"]/div/div[1]/div/div[2]/div/input'

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
    def check_note_title_text
      find(:xpath, TITLE_NOTE_FIELD).value
    end
    def check_note_text_area_text
      find(:xpath, TEXT_NOTE_FIELD).text
    end

    def read_project_number_text
    find(PROJECT_NUMBER_TEXT)['data-count'].to_i
    end

    def check_audio_checkbox
      find(:xpath, AUDIO_CHECKBOX).click
    end

    def read_isrc_text
      find(:xpath, ISRC_TEXT).value
    end




end
