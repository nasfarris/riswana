@State
Feature: State Module Api Automation

  Scenario: Verify user Get statelist through api
    Given user add headers for to statelist
    When User add send "GET"request for statelist endpoint
    Then User verify status code is 200
    Then User verify the statelist response message matches "Tamilnadu"and save state_id

