require "capybara/dsl"

class GoogleSearch
  include Capybara::DSL

  GOOGLE_URL = "https://www.google.co.uk/"
  SEARCH_FIELD_ID = "lst-ib"
  SEARCH_BUTTON = "Google Search"

  def visit_google
    visit(GOOGLE_URL)
  end
  def fill_search_field search_query
    fill_in(SEARCH_FIELD_ID, with: search_query).send_keys(:enter)
  end
  def click_search_result text
    click_link text
  end

end
