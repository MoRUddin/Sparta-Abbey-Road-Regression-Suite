
class AbbeyRoadHomepage
  include Capybara::DSL

  AR_HOMEPAGE_URL = "https://stage.abbeyroad.com/"
  VISIT_US_TAB = ".nav.navbar-nav.visible-lg li"
  ONLINE_SERVICES_TAB = "//*[@id='holder']/nav[1]/div/ul[1]/li[3]/a"
  ONLINE_MIXING_OPTION = "//*[@id='holder']/div[1]/div/div[2]/ul/li[1]/ul/li/a"
  ONLINE_MASTERING_OPTION = "//*[@id='holder']/div[1]/div/div[2]/ul/li[2]/ul/li/a"
  EMBEDDED_TWITTER = "#twitter-widget-0"
  EMBEDDED_INSTAGRAM = "section.widget.instagram"
  EMBEDDED_YOUTUBE = "div.content.below.three"
  EMBEDDED_SPOTIFY = '//*[@id="holder"]/main/div/div/section[10]/div'

  def get_url
    current_url
  end
  def visit_ar_homepage
    visit(AR_HOMEPAGE_URL)
  end
  def go_to_live_feed_page
    all(VISIT_US_TAB).last.click
  end
  def hover_over_online_services
    find(:xpath,ONLINE_SERVICES_TAB).hover
  end
  def click_online_mixing
    find(:xpath,ONLINE_MIXING_OPTION).click
  end
  def click_online_mastering
    find(:xpath,ONLINE_MASTERING_OPTION).click
  end
  def check_for_twitter_embedded
    find(EMBEDDED_TWITTER).visible?
  end
  def check_for_youtube_embedded count
    find(EMBEDDED_YOUTUBE).has_selector?("iframe", count: count)
  end
  def check_for_instagram_embedded
    find(EMBEDDED_INSTAGRAM).visible?
  end
  def count_instagram_images count
    find('div.posts').has_selector?("img", count: count)
  end
  def check_for_spotify_embedded count
    find(:xpath,EMBEDDED_SPOTIFY).has_selector?("iframe", count: count)
  end

end
