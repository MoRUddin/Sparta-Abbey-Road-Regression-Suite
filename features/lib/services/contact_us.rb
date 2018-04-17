
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

end
