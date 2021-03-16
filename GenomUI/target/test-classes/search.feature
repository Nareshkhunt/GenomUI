@search
Feature: Search
  As an end user
  I want to search for product
  So that i can view results

  Scenario: Search for a product
    Given I am on the home page
    When I search for products "watches"
    Then I should be able to see respective results