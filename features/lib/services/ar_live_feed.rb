class AbbeyRoadLiveFeed
  include Capybara::DSL

  LIVE_FEED_URL = "https://stage.abbeyroad.com/crossing"
  TIME_TAB_LIST = "div.archive-times"
  CURRENT_VIDEO_TIME_CLASS = "div.vjs-time-tooltip"
  LIVE_VIDEO_TEXT = "div.vjs-live-display"
  SELECTED_CLASS = "a.selected"
  WALL_OF_FAME = "div.items"
  WALL_OF_FAME_TIMESTAMP = "small"
  ERROR_MODAL_BUTTON_TEXT = "Ok"
  SHARE_MODAL_POST_BUTTON = "Post"
  ENVELOPE_ICON = "i.fa.fa-envelope-o"
  EMOJI_FIELD_CLASS = ".emojionearea-editor"
  EMAIL_FIELD_CLASS = "input.form-control"

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
    rand(0..(get_time_tabs.length-1))
  end
  def get_time_tabs_list
    find(TIME_TAB_LIST)
  end
  def get_time_tabs
    get_time_tabs_list.all("a")
  end
  def get_nth_time n
    if n == get_time_tabs.length-1
      return get_time_tabs[0]
    end
    get_time_tabs[n]
  end
  def get_current_video_time
    all(CURRENT_VIDEO_TIME_CLASS)[1].text
  end
  def get_live_status
    find(LIVE_VIDEO_TEXT).text
  end
  def get_selected_time_colour
    find(SELECTED_CLASS).native.css_value('background-color')
  end
  def get_wall_image_count
    find(WALL_OF_FAME).all("img").length
  end
  def get_wall_timestamp index
    all(:css, WALL_OF_FAME_TIMESTAMP)[index].text
  end
  def is_wall_chronological
    wall_array = all(:css,"small")
    (0..4).each do |i|
      if DateTime.parse(wall_array[i].text) < DateTime.parse(wall_array[i+1].text)
        return false
      end
    end
    return true
  end
  def click_button_text button_text
    click_button(button_text)
  end
  def click_envelope
    find(ENVELOPE_ICON).click
  end
  def fill_in_modal_name name
    all(EMOJI_FIELD_CLASS)[0].send_keys name
  end
  def fill_in_email_from email
    all(EMAIL_FIELD_CLASS)[1].send_keys email
  end
  def fill_in_email_to email
    all(EMAIL_FIELD_CLASS)[2].send_keys email
  end
  def error_modal_button_visible
    sleep 2
    find_button(ERROR_MODAL_BUTTON_TEXT).visible?
  end
  def share_modal_button_visible
    sleep 2
    find_button(SHARE_MODAL_POST_BUTTON).visible?
  end
end
