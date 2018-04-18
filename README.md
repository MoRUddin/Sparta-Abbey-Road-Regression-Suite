# Sparta-Abbey-Road-Regression-Suite

## Requirements
### Windows
* Windows 10
* Ruby 5.1.5
* A BASH Compliant Terminal
* Ruby Bundler - use the command `gem install bundler` in terminal to install
* All subsidiary Gems (included in the gemfile)
* The latest version of Google Chrome installed
* The latest version of Firefox installed
* A stable internet connection
### Mac
* MAC OSX High Sierra
* Ruby 5.1.5
* A BASH Compliant Terminal
* Ruby Bundler - use the command `gem install bundler` in terminal to install
* All subsidiary Gems (included in the gemfile)
* The latest version of Google Chrome installed
* A stable internet connection

## Aim
The aim of this project was to create an automation regression test suite for Abbey Road Studios. This was so that when updates to their site are made, this suite can be ran to regression test the rest of the site.

## How to install

To clone the repository run the command `git clone` within the terminal with this: <br>
 `git@github.com:MoRUddin/Sparta-Abbey-Road-Regression-Suite.git`

To install all the Ruby Gems required for this suite run the command ` bundle` within the terminal. This will install all the required gems specified within the 'Gemfile'.

##### Running the software

Open the program, and within the console while in the Sparta-Abbey-Road-Regression-Suite folder run the command `<browser name>=true cucumber` to see the tests running. By default this program uses the Chrome web browser.
Within the terminal window, it will show all the scenarios that are running and whether they have passed.

To create a report detailing the tests, you have to run the command `cucumber -f html -o /test_html.html`. This will create a HTML file that can be viewed on any browser. All passing tests are highlighted in green, and failing ones in red. The failing tests can be expanded upon to get more details about what result the test was expecting and what result it got. To get other formats for the reports, replace the "HTML" with "JSON".

Within the "features" folder, there are a number of feature files. These files contain the scenarios that Cucumber uses to create tests and each scenario has been linked to a user story. The stories have been sorted into different feature files depending on what they pertain to. This is the order in which the tests will be run in.

The step_definitions folder contains all the tests actually being run. Some of the tests run automatically without any input. There are some that require some arguments to be inputted into the methods. Some of these arguments can be pieces of data being fed to an input field. Other times it can be names or ids of elements on webpages. When there is a "Faker::" in the argument, this is using a gem that randomly generates data to input. An example of this is here: `features/step_definitions/contact_us_step_defs.rb`.
On line 15, the method *"fill_field_with_text"* requires two arguments; the name of the input field, and some data to populate that field.

The step definitions will not have the same number of steps as the feature files as any scenario that has the same Given as another scenario will not show up in the step definitions files as Cucumber recognises that they are the same step and will recall the one used before. The same applies to the Whens and the Thens.

The lib folder contains all the methods for selecting elements. These have been separated by which page they refer to with each individual page within the services folder. Inside the lib folder, there is an "ar_service.rb" file which instantiates all the classes within each service file in the services folder. Within each service, the layout is set in a way where all the variables used are at the top and all the methods are written below. This enables us to


Project with AbbeyRoad to produce an automation regression test suite

Things to include:
  * changing webpage name changes google search results, since some tests access the site from google using link text.
  * adding/removing iFrames to the main page will affect their identifiers, hence doing so will break tests.
  * Any test including modals may fail. This is because the test expectance runs before modal appears/disappears due to modal animation lag.
