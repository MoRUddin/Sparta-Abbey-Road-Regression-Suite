class TemporaryEmail
  attr_reader :email_address
  include Capybara::DSL

  TE_HOMEPAGE_URL = "https://www.10minutemail.com/"
  EMAIL_ADDRESS = "#mailAddress"
  FIRST_MESSAGE = "#ui-id-2"
  EMAIL_SENDER_CLASS = "span.inc-mail-address"
  EMAIL_SUBJECT_CLASS = "span.inc-mail-subject"

  EMAIL_SCOPE = "//*[@id='ui-id-2']"

  def visit_homepage
    visit(TE_HOMEPAGE_URL)
  end
  def save_address
    @email_address = find(EMAIL_ADDRESS)["value"]
  end
  def get_first_email
    find(FIRST_MESSAGE, wait: 180)
  end
  def get_sender
    find(EMAIL_SENDER_CLASS).text
  end
  def get_subject
    find(EMAIL_SUBJECT_CLASS).text
  end
  def get_validation_link
    get_first_email.all("a").last["href"]
  end
end
