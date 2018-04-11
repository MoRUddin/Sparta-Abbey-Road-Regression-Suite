require "capybara/dsl"
require "date"
require "pry"

class AbbeyRoadLiveFeed
  include Capybara::DSL

  LIVE_FEED_URL = "https://www.abbeyroad.com/crossing"
  TIME_TAB_LIST = "div.archive-times"
  CURRENT_VIDEO_TIME_CLASS = "div.vjs-time-tooltip"

  def this_url
    current_url
  end
  def convert_to_time time_string
    DateTime.parse(time_string)
  end
  def visit_live_feed
    visit(LIVE_FEED_URL)
  end
  def random_tab_selector
    rand(0..(get_time_tabs.all("a").length-1))
  end
  def get_time_tabs
    find(TIME_TAB_LIST)
  end
  def get_nth_time n
    if n == get_time_tabs.all("a").length-1
      return get_time_tabs.all("a")[0]
    end
    get_time_tabs.all("a")[n]
  end
  def get_current_video_time
    all(CURRENT_VIDEO_TIME_CLASS)[1].text
  end

end
