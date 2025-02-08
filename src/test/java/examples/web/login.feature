Feature: Web Login Test

Background:
    * configure driver = { type: 'chrome', headless: true }
    * url webUrl
    * def LoginPage = Java.type('examples.web.pages.LoginPage')

Scenario: Successful login
    Given path LoginPage.getLoginUrl()
    When driver webUrl + '/' + LoginPage.getLoginUrl()
    And driver.input(LoginPage.USERNAME_INPUT, 'tomsmith')
    And driver.input(LoginPage.PASSWORD_INPUT, 'SuperSecretPassword!')
    And driver.click(LoginPage.LOGIN_BUTTON)
    Then match driver.text(LoginPage.SUCCESS_MESSAGE) contains LoginPage.getSuccessMessage()

Scenario: Failed login with invalid credentials
    Given path LoginPage.getLoginUrl()
    When driver webUrl + '/' + LoginPage.getLoginUrl()
    And driver.input(LoginPage.USERNAME_INPUT, 'invalid_user')
    And driver.input(LoginPage.PASSWORD_INPUT, 'wrong_password')
    And driver.click(LoginPage.LOGIN_BUTTON)
    Then match driver.text(LoginPage.ERROR_MESSAGE) contains LoginPage.getErrorMessage()