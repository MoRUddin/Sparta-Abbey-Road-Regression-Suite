class TemporaryEmailBackup
  attr_reader :email_address
  include Capybara::DSL

  TE_HOMEPAGE_URL = "http://www.yopmail.com/en/email-generator.php"
  EMAIL_ADDRESS = "input#login"

  def get_url
    current_url
  end
  def visit_homepage
    visit(TE_HOMEPAGE_URL)
  end
  def visit_url url
    visit(url)
  end
  def save_address
    @email_address = find(EMAIL_ADDRESS)["value"]
  end

end
