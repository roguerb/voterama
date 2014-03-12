Feature: Create an Idea
  In order to store ideas
  As a user
  I want to create an idea

  Scenario: Successful creation
    Given I am on the create idea page
    When I fill out the idea form
    And I submit the form
    Then I should see a success message
    And I should see my idea
