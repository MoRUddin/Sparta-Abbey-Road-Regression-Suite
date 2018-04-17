class StudioOne
  include Capybara::DSL

  STUDIO_ONE_URL = 'https://stage.abbeyroad.com/studio-one'

  def visit_studio_one
    visit(STUDIO_ONE_URL)
  end

  def check_for_iframe
    all('iframe')[4].visible?
  end

  def check_default_location
    all('iframe')[4]["src"]
  end

end
