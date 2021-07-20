@ignore
Feature: Navigate Scrum Board App

  Background:

    # * configure driver = { type: 'chrome' }
    # Using headless container
    * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
  # Using the docker grid
  # * def session = { capabilities: { browserName: 'firefox',  'moz:firefoxOptions': { args :[] } }, desiredCapabilities: { browserName: 'firefox' } }
  # * configure driver = { type: 'chromedriver', start: false, webDriverUrl: 'http://192.168.1.80:4444/wd/hub' }
  # * configure driver = { type: "geckodriver", start: false, webDriverUrl: 'http://192.168.1.80:4444/wd/hub' }



  Scenario: Click the Add Story button and Validate if the modal Pop's up

    Given driver 'https://scrum-board-app.netlify.app/'
    When click('{^button}Add Story')
    Then waitUntil('{^legend}Add Story', '!_.hidden');
    And screenshot()

  Scenario: Filter 2FA

    Given driver 'https://scrum-board-app.netlify.app/'
    And input("#search-input", 'Add 2FA')
    * screenshot()
