class ProjectDashboard
  include Capybara::DSL

    PROJECTS_URL = "https://stagemy.abbeyroad.com/projects"
    MIXING_URL = "https://stage.abbeyroad.com/online-mixing"
    NEW_MASTERING = "New Mastering Project"
    NEW_MASTERING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div[1]/div/div[1]/h5'
    NEW_MIXING = "New Mixing Project"
    NEW_MIXING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div/div/div[1]/h5'
    START_MIXING_PROJECT_BTN = "Start Project"
    CLICK_TRACK_LINK = '//*[@id="holder"]/main/div/div[2]/div/div[2]/ul/li[2]/a'
    CLICK_SETTINGS_LINK = '//*[@id="holder"]/main/div/div[2]/div/div[2]/ul/li[3]/a'
    MANAGE_LOGIN_LINK = 'Manage linked logins'
    FACEBOOK_BTN_VALUE = 'Facebook'
    FACEBOOK_EMAIL_VALUE = 'email'
    FACEBOOK_PASSWORD_VALUE = 'pass'
    FACEBOOK_LOGIN_BTN_ID = 'loginbutton'
    FACEBOOK_CONFIRM_BTN_NAME = '__CONFIRM__'
    LINKED_ACCOUNT_REMOVE_BTN = 'Remove'

    def visit_projects
      visit(PROJECTS_URL)
    end

    def visit_mixing
      visit(MIXING_URL)
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

    def click_new_mixing
      find_link(NEW_MIXING).click
    end

    def verify_new_mixing
      if find(:xpath, NEW_MIXING_PROJECT).text == "Uploaded Tracks"
        return true
      else
        return false
      end
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

    def find_settings_link
      find(:xpath, CLICK_SETTINGS_LINK)
    end

    def click_settings_link
      find_settings_link.click
    end

    def click_manage_login_link
      click_link(MANAGE_LOGIN_LINK)
    end

    def click_fb_button
      click_button(FACEBOOK_BTN_VALUE)
    end

    def fill_in_fb_email(email)
      fill_in FACEBOOK_EMAIL_VALUE, :with => email
    end

    def fill_in_fb_password(password)
      fill_in FACEBOOK_PASSWORD_VALUE, :with => password
    end

    def click_fb_login_btn
      click_button(FACEBOOK_LOGIN_BTN_ID)
    end

    def click_fb_confirm_btn
      click_button(FACEBOOK_CONFIRM_BTN_NAME)
    end

    def find_fb_remove_btn
      find_link(LINKED_ACCOUNT_REMOVE_BTN).visible?
    end

    def get_url
      current_url
    end
end
