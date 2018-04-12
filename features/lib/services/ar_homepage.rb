
class AbbeyRoadHomepage
  include Capybara::DSL

  AR_HOMEPAGE_URL = "https://stage.abbeyroad.com/"
  VISIT_US_TAB = ".nav.navbar-nav.visible-lg li"

  def get_url
    current_url
  end
  def visit_ar_homepage
    visit(AR_HOMEPAGE_URL)
  end
  def go_to_live_feed_page
    all(VISIT_US_TAB).last.click
  end
end
