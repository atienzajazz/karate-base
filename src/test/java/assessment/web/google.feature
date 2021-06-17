Feature: Search Deltek on Google

  Background:

    * configure driver = { type: 'chrome' }
  # Using the docker grid
  # * configure driver = { type: 'chromedriver', start: false, webDriverUrl: 'http://localhost:4444/wd/hub' }
  # using headless container
  # * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }

  Scenario: try to login to github and then do a google search

    Given driver 'https://google.com'
    And input("input[name=q]", 'karate dsl')
    When submit().click("input[name=btnI]")
    # this may fail depending on which part of the world you are in !
    Then waitForUrl('https://github.com/intuit/karate')
