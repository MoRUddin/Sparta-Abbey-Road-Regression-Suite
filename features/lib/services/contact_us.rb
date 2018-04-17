
class ContactUs
  include Capybara::DSL

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
end
