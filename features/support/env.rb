require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require "date"
require "pry"
require_relative '../lib/ar_service' #require main page file

# The below line of code now means that the chrome driver is registered before every run.
# Any query stated at the top level of the env.rb file will be initiated at every cucumber run

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
  config.default_driver = :chrome # ensures chrome is the default driver
  config.app_host = 'http://stage.abbeyroad.com/' # provides the app host/core url
end

World(AbbeyRoadStage)
