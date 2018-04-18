require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'capybara/dsl'
require 'rspec'
require "date"
require "pry"
require "faker"
require_relative '../lib/ar_service' #require main page file

# The below line of code now means that the chrome driver is registered before every run.
# Any query stated at the top level of the env.rb file will be initiated at every cucumber run

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
  config.app_host = 'http://stage.abbeyroad.com/' # provides the app host/core url

  if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
  elsif ENV['firefox']
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end
  elsif ENV['safari']
    Capybara.default_driver = :safari
    Capybara.register_driver :safari do |app|
      Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
  elsif
    Capybara.default_driver = :poltergeist
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, options)
    end
  end
end

World(AbbeyRoadStage)
