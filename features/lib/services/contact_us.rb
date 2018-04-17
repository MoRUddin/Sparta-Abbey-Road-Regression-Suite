
class ContactUs
  include Capybara::DSL

  MESSAGE_ERROR = '#Message-error'
  NAME_ERROR = '#Name-error'
  EMAIL_ERROR = '#Email-error'

  def visit_url(url)
    visit(url)
  end
  def abbey_road_address
    page.has_text?('3 Abbey Road')
    page.has_text?("London")
    page.has_text?("NW8 9AY")
    page.has_text?("UK")
  end

  def check_for_iframe
    all('iframe')[4].visible?
  end

  def check_default_location
    all('iframe')[4]["src"]
  end

  def click_send_message_button text
    click_button(text)
  end

  def find_message_error
    find(MESSAGE_ERROR).text
  end

  def find_name_error
    find(NAME_ERROR).text
  end

  def find_email_error
    find(EMAIL_ERROR).text
  end

end
