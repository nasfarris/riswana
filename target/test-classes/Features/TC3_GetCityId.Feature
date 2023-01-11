@City
Feature: State Module Api Automation

  Scenario: Verify user Get citylist through api
    Given user add headers for to citylist
    When User add send add request for citylist endpoint
    And User Send "POST" request for citylist endpoint
    Then User verify status code is 200
    Then User verify the citylist response message matches "yercaud"and saved city_id