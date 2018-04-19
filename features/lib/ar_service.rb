
module AbbeyRoadStage
  def get_url
    current_url
  end
  def visit_url(url)
    visit(url)
  end
  def click_button_by_text button_text
    click_button(button_text)
  end
  def click_link_by_text link_text
    click_link link_text
  end
  def fill_field_with_text(field_selector,text)
    fill_in(field_selector,with: text)
  end

  def google_search
    GoogleSearch.new
  end
  def ar_homepage
    AbbeyRoadHomepage.new
  end
  def ar_live_feed
    AbbeyRoadLiveFeed.new
  end
  def temp_email
    TemporaryEmail.new
  end
  def temp_email_bak
    TemporaryEmailBackup.new
  end
  def ar_p_dashboard
    ProjectDashboard.new
  end
  def ar_registration
    RegisterPage.new
  end
  def contact_us
    ContactUs.new
  end

end
