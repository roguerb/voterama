Feature: List the Ideas
  In order to see all of the ideas
  As a user
  I want to view a list of ideas

  Scenario: Successful listing
    Given there are ideas
    When I go to the ideas page
    Then I should see a list of ideas
