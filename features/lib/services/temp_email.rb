class TemporaryEmail
  attr_reader :email_address
  include Capybara::DSL

  TE_HOMEPAGE_URL = "https://www.10minutemail.com/"
  EMAIL_ADDRESS = "#mailAddress"
  FIRST_MESSAGE = "#ui-id-2"
  MESSAGE_BODY = "p.message"
  EMAIL_SENDER_CLASS = "span.inc-mail-address"

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
  def get_first_email
    find(FIRST_MESSAGE, wait: 180).find(MESSAGE_BODY)
  end
  def get_sender
    find(EMAIL_SENDER_CLASS).text
  end
end
