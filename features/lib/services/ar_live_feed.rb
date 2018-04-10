require "capybara/dsl"

class AbbeyRoadLiveFeed
  include Capybara::DSL

  LIVE_FEED_URL = "https://www.abbeyroad.com/crossing"

  def this_url
    current_url
  end

end
