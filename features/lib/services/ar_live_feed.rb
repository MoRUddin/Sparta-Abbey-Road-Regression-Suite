require "capybara/dsl"

class AbbeyRoadLiveFeed
  include Capybara::DSL

  LIVE_FEED_URL = "https://www.abbeyroad.com/crossing"
  TIME_TAB_LIST = "div.archive-times"

  def this_url
    current_url
  end
  def visit_live_feed
    visit(LIVE_FEED_URL)
  end
  def get_time_tabs
    find(TIME_TAB_LIST)
  end
  def click_nth_time_tab n
    get_time_tabs.all("a")[n-1].click
  end

end
