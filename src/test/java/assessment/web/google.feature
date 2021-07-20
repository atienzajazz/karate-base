@ignore
Feature: Search Karate on Google

  Background:

    * configure driver = { type: 'chrome' }
    # Using headless container
    * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
  # Using the docker grid
  # * def session = { capabilities: { browserName: 'firefox',  'moz:firefoxOptions': { args :[] } }, desiredCapabilities: { browserName: 'firefox' } }
  # * configure driver = { type: "geckodriver", webDriverSession: '#(session)', start: false, webDriverUrl: 'http://localhost:4444/wd/hub' }
  # * configure driver = { type: 'chromedriver', start: false, webDriverUrl: 'http://192.168.1.80:4444/wd/hub' }


  Scenario: Do a google search of Karate and Navigate to its Github Page

    Given driver 'https://google.com'
    And input("input[name=q]", 'karate dsl')
    When submit().click("input[name=btnI]")
    Then waitForUrl('https://github.com/intuit/karate')
