@google
Feature: Search Karate on Google

  Scenario Outline: Do a google search of Karate and Navigate to its Github Page
    * configure driver = { type: '#(driverType)', start: false, webDriverUrl: 'http://localhost:4444' }

    Given driver 'https://google.com'
    And input('input[name=q]', 'karate dsl')
    When submit().click('input[name=btnI]')
    Then waitForUrl('https://github.com/karatelabs/karate')

    Examples:
      | driverType   |
      | chromedriver |
      | geckodriver  |

