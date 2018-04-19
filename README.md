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
To clone the repository run the command `git clone git@github.com:MoRUddin/Sparta-Abbey-Road-Regression-Suite.git` within the terminal.

To install all the Ruby Gems required for this suite run the command ` bundle` within the terminal. This will install all the required gems specified within the 'Gemfile'.

## Additional setup steps
### Windows
1. The project uses Cucumber, which in turn uses Selenium Webdriver, which in turn uses ChromeDriver. At the time of this suite's delivery Chrome is at version 65. The project is using Chromedriver v2.37. You can find the latest release [here](https://sites.google.com/a/chromium.org/chromedriver/downloads)
2. Move ChromeDriver to either this project's location or to one of your choice. Then right-click on the file, go to **Properties**, and copy the **Location** file path
3. Head to **Control Panel > Sysytem and Security > System** and **Advanced Systems Settings** (it might ask you for an admin password).
4. Open **Environment Variables**. In **System Variables**, open **Path** and click **New**. Paste in the path you copied with the ChromeDriver location.
5. Restart your terminal, and head back to the project directory. Now if you run `cucumber` the project should run!

## Running the software
Open the program, and within the console while in the Sparta-Abbey-Road-Regression-Suite folder run the command `<browser name>=true cucumber` to see the tests running.
Within the terminal window, it will show all the scenarios that are running and whether they have passed.

To create a report detailing the tests, you have to run the command `cucumber -f html -o /test_html.html`. This will create a HTML file that can be viewed on any browser. All passing tests are highlighted in green, and failing ones in red. The failing tests can be expanded upon to get more details about what result the test was expecting and what result it got. To get other formats for the reports, replace the "HTML" with "JSON".

Within the "features" folder, there are a number of feature files. These files contain the scenarios that Cucumber uses to create tests and each scenario has been linked to a user story. The stories have been sorted into different feature files depending on what they pertain to. This is the order in which the tests will be run in.

The step_definitions folder contains all the tests actually being run. Some of the tests run automatically without any input. There are some that require some arguments to be inputted into the methods. Some of these arguments can be pieces of data being fed to an input field. Other times it can be names or ids of elements on webpages. When there is a "Faker::" in the argument, this is using a gem that randomly generates data to input. An example of this is here: `features/step_definitions/contact_us_step_defs.rb`.
On line 15, the method *"fill_field_with_text"* requires two arguments; the name of the input field, and some data to populate that field.

The step definitions will not have the same number of steps as the feature files as any scenario that has the same Given as another scenario will not show up in the step definitions files as Cucumber recognises that they are the same step and will recall the one used before. The same applies to the Whens and the Thens.

The lib folder contains all the methods for selecting elements. These have been separated by which page they refer to with each individual page within the services folder. Inside the lib folder, there is an "ar_service.rb" file which instantiates all the classes within each service file in the services folder. Within each service, the layout is set in a way where all the variables used are at the top and all the methods are written below. The variables at the top of each page are different selectors used to target elements. Some of these are *button/link text, IDs, classes, and XPath*. The XPath was used as a last resort when other selectors couldn't be identified or elements were missing the others. Using XPath is also high risk as when a new element is added to the page, the XPath used in these tests becomes obsolete and requires updating the variable to which it refers.

These tests also use external services when it comes to emails. The test creates a temporary email and checks that an email has been sent. Each time the tests are run a new email is created. However this means that they are limited in that the temporary email service (10MinuteMail) only allows for **6 calls made per hour** from the same IP address. These tests relate to registration and sending an image from the Wall of Fame to an email address.

Another risk associated with the tests is that when ***changing webpage titles***, the Google search results will also change. This in turn causes tests that come from Google to fail, as they are searching for specific text within links. Another instance would be adding/removing iframes on the homepage. The identifiers used will be affected and thus break those tests. One final factor to keep in mind when running these tests is an ***unstable internet connection***. This can affect tests where we expect a certain url but the test fails as the expected page has not loaded fast enough, and the ***expectation is launched on the previous page***. This can also happen for expecting certain elements to load such as modals, since these have animation lag.

##### Manual Test Scripts:
###### Terminology:
* Given: A precondition to running the test
* When: Actions the user must take to carry out the test
* Then: The expected result of the test (The Assertion)

###### As a User, I can upload my tracks as .wav files
* Given: I am logged in
* And: I am on a new project
* When: I click upload
* And: I upload a valid wav file
* Then: the track is added to my list of tracks

###### As a logged in User I can upload my project tracks in .wav so that I can start my project.
* Given: I have started my online mixing project
* When: I upload my .wav files
* Then: I can see my uploaded project files

###### As a logged in User, I can upload my reference files in .wav, with a 96Khz/24bit sampling rate
* Given: I have uploaded my project files And: I am on the reference file upload page
* When: I upload my wav files with the correct sampling rate
* Then: I can see my uploaded reference files

###### As a User, I can go to the settings tab to manage linked logins.
* Given: I am logged in
* And: I am on the settings tab
* And: I click manage accounts
* When: I click Facebook
* And: I log in with my Facebook details and click enter
* Then: I am taken back to the manage accounts page with a linked Facebook

###### As a registered User with a connected Facebook account, I can login in with Facebook.
* Given: I am a registered user,
* And: I have a connected Facebook
* And: I am on the login page,
* When: I click login with Facebook,
* Then: I am redirected to the Abbey Road website.

###### As an unregistered User, I can register with my Facebook account
* Given: I have a Facebook account
* And: I am on the register page
* When: I click login with Facebook,
* And: I confirm my Facebook,
* Then: I am redirected to the Abbey Road website.
