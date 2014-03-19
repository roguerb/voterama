Feature: Create an Idea
  In order to store ideas
  As a user
  I want to create an idea

  Scenario: Successful creation
    Given I am on the "ideas" page
    When I click on "New Idea"
    And I submit the idea form
    Then I should see a success message
    And I should see my idea
