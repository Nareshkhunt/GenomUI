@basket
Feature:Product search
  As an end user
  I want to add a product to basket
  So that I can buy products

  Scenario Outline:User
    Given I am on the home page
    When I search for products "watches"
    And I click load more button
    And I select a product "<productName>"
    And I add the product to the basket
    Then the product should be in the basket

    Examples:
      | productName                              |
      | Garmin Forerunner 45S Sports Watch Black |
      | Garmin QuickFit 22mm Silicone Watch Band |