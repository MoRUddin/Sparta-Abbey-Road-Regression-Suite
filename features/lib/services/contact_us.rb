
class ContactUs
  include Capybara::DSL

  def visit_url(url)
    visit(url)
  end

  def read_contact_picture
    find("div.details > img").visible?
  end

  def read_contact_name
    find("div.details > h3").visible?
  end

  def read_contact_title
    find("div.details > p").visible?
  end

  def read_contact_number
    find("div.details > ul > li ").visible?
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
  def fill_field_with_text(field_selector,text)
    fill_in(field_selector,with: text)
  end
  def click_button_by_text button_text
    click_button button_text
  end
  def click_link_by_text link_text
    click_link link_text
  end
  def email_error_present
    page.has_selector?("#newsletterEmail-error")
  end

  def type_message_in_contact_section
    fill_in 'Message', :with => 'Testing Testing'
  end

  def type_name_in_contact_section
    fill_in 'Name', :with => 'Testing Testerton'
  end

  def type_email_in_contact_section
    fill_in 'Email', :with => 'sp_ar_test@yahoo.com'
  end

  def confirmation_contact_section
    page.has_text?('Thank you for your message. I will get back to you as soon as possible.')
  end
end
