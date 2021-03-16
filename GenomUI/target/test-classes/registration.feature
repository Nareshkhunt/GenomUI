@registration
Feature: User registration
  As an end user
  I want to register
  So that I can use application
  @registration1
  Scenario:User registration with valid data
    Given I am on the home page
    When I click on the register button
    And I enter my first name "Naresh"
    And I enter my last name "khunt"
    And I enter my email address "nkumar@yahoo.com"
    And I retype my email address "nkumar@yahoo.com"
    And I enter my password "hello123@"
    And I retype my password "hello123@"
    And I enter my phone number "07538926199"
    And I click on register now button
    Then I should see form model with text "Welcome to the TAKEALOT.com family!"

  Scenario: Check registration with existing email
    Given I am on the home page
    When I click on the register button
    And I enter my first name "Naresh"
    And I enter my last name "khunt"
    And I enter existing email address "nkumar@yahoo.com"
    And I retype existing email address "nkumar@yahoo.com"
    And I enter my password "hello123@"
    And I retype my password "hello123@"
    And I enter my phone number "07538926199"
    And I click on register now button
    Then User should see warning message "That email address is already registered on takealot.com."

  Scenario Outline: Check registration with invalid email
    Given I am on the home page
    When I click on the register button
    And I enter my first name "<firstName>"
    And I enter my last name "<lastName>"
    And I enter my email address "<email>"
    And I retype my email address "<email>"
    And I enter my password "<password>"
    And I retype my password "<password>"
    And I enter my phone number "<mobileNumber>"
    And I click on register now button
    Then User should see error message "Invalid email address"

    Examples:
      |firstName|lastName|  email  | password|mobileNumber|
      |Naresh|khunt|    abc@yahoo|  heloo123@1|07538926198|
      |naresh|khunt|    a@gmail|  userAdmin2|  07538abc|

