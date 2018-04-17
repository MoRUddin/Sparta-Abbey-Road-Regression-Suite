
class ContactUs
  include Capybara::DSL

  def visit_url(url)
    visit(url)
  end
  def abbey_road_address
    page.has_text?('3 Abbey Road')
  end

end
