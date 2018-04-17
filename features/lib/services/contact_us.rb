
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

end
