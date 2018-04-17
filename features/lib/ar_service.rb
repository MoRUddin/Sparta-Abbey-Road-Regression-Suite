
module AbbeyRoadStage

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
  def ar_studio_one
    StudioOne.new
  end

end
