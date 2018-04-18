class RegisterPage
  include Capybara::DSL

  REGISTER_URL = "https://stagemy.abbeyroad.com/account/login"
  REGISTER_SCOPE = '//*[@id="register"]'
  LOGIN_SCOPE = '//*[@id="login"]'
  USERNAME_ID = 'name'

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
  def click_username_link
    click_button(USERNAME_ID)
  end
end
