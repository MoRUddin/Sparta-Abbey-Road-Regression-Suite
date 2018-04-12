class RegisterPage
  include Capybara::DSL

REGISTER_URL = "https://stagemy.abbeyroad.com/account/login"
# REGISTER_NAME_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
# REGISTER_EMAIL_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
# REGISTER_EMAIL_CONFIRM_FIELD_XPATH = '//*[@id="register"]/div/form/div[1]/div/input'
# REGISTER_PASSWORD_FIELD_XPATH = '//*[@id="register"]/div/form/div[4]/div/input'
# REGISTER_PASSWORD_CONFIRMATION_FIELD_XPATH = '//*[@id="register"]/div/form/div[5]/div/input'

REGISTER_SCOPE = '//div/[@id="register"]'

  def visit_registration_page
    visit(REGISTER_URL)
  end

  def fill_in_register_form name
    within(REGISTER_SCOPE) do
      fill_in 'Name', :with => name
    end
  end

  def fill_in_email_field email
    fill_in(REGISTER_EMAIL_FIELD_XPATH, :with => email)
  end

  def fill_in_email_confirm_field email
    fill_in(REGISTER_EMAIL_CONFIRM_FIELD_XPATH, :with => email)
  end

  def fill_in_password_field password
    fill_in(REGISTER_PASSWORD_FIELD_XPATH, :with => password)
  end

  def fill_in_password_confirm_field password
    fill_in(REGISTER_PASSWORD_CONFIRM_FIELD_XPATH, :with => password)
  end

end
