@Login
Feature: Login Module Api Automation

  Scenario: Get user logintoken from login  endpoint
    Given user add headers
    When User add basic authentication forlogin
    And User send"POST"request for login endpoint
    Then User verify status code is 200
    Then User verify the login response body firstname as"Riswana"and get the logtoken saved