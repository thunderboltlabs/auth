Feature: User Login
  Background:
    Given Tammer is a user

  Scenario: user logs in
    When Tammer logs in
    Then Tammer is logged in

