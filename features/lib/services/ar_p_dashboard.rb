class ProjectDashboard
  include Capybara::DSL

  PROJECTS_URL = "https://stagemy.abbeyroad.com/projects"
  MIXING_URL = "https://stage.abbeyroad.com/online-mixing"
  MASTERING_URL = "http://stage.abbeyroad.com/online-mastering"
  NEW_MASTERING = "New Mastering Project"
  NEW_MASTERING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div[1]/div/div[1]/h5'
  NEW_MIXING = "New Mixing Project"
  NEW_MIXING_PROJECT = '//*[@id="holder"]/main/div/div[2]/div[2]/div[2]/div[1]/div/div/div[1]/h5'
  START_MIXING_PROJECT_BTN = "Start Project"

  def click_button_by_text button_text
    click_button button_text
  end
  def click_link_by_text link_text
    click_link link_text
  end
  def visit_projects
    visit(PROJECTS_URL)
  end
  def visit_mixing
    visit(MIXING_URL)
  end
  def visit_mastering
    visit(MASTERING_URL)
  end
  def click_new_mastering
    find_link(NEW_MASTERING).click
  end
  def verify_new_mastering
    if find(:xpath, NEW_MASTERING_PROJECT).text == "Existing Tracks"
      return true
    else
      return false
    end
  end
  def click_new_mixing
    find_link(NEW_MIXING).click
  end
  def verify_new_mixing
    if find(:xpath, NEW_MIXING_PROJECT).text == "Uploaded Tracks"
      return true
    else
      return false
    end
  end
  def start_mixing_project
    find_link(START_MIXING_PROJECT_BTN).click
  end
  def find_all_links
    all("a")
  end
end
