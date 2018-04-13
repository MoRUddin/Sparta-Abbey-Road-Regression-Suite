class RegisterPage
  include Capybara::DSL

  REGISTER_URL = "https://stagemy.abbeyroad.com/account/login"
  # REGISTER_NAME_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
  # REGISTER_EMAIL_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
  # REGISTER_EMAIL_CONFIRM_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
  # REGISTER_PASSWORD_FIELD_XPATH = '//*[@id="register"]/div/form/div[4]/div/input'
  # REGISTER_PASSWORD_CONFIRMATION_FIELD_XPATH = '//*[@id="register"]/div/form/div[5]/div/input'

<<<<<<< HEAD
  REGISTER_SCOPE = '//*[@id="register"]'
  LOGIN_SCOPE = '//*[@id="login"]'
=======
REGISTER_SCOPE = '//*[@id="register"]'
LOGIN_SCOPE = '//*[@id="login"]'
USERNAME_ID = 'name'
>>>>>>> dev

  def get_url
    current_url
  end
  def visit_registration_page
    visit(REGISTER_URL)
  end
  def fill_in_register_form name, email, password
    within(:xpath, REGISTER_SCOPE) do
      fill_in 'Name', :with => name
      fill_in 'Email', :with => email
      fill_in 'ConfirmEmail', :with => email
      fill_in 'Password', :with => password
      fill_in 'ConfirmPassword', :with => password
    end
  end
  def fill_in_login_form email, password
    within(:xpath, LOGIN_SCOPE) do
      fill_in 'Email', :with => email
      fill_in 'Password', :with => password
    end
  end
<<<<<<< HEAD
  def click_register_button button_text
    click_button(button_text)
  end
=======

  def click_button_by_text button_text
    click_button(button_text)
  end

  def get_url
    current_url
  end

  def click_username_link
    click_button(USERNAME_ID)
  end


>>>>>>> dev
end
