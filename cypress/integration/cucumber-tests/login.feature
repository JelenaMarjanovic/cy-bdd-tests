Feature: Login to Application

  As an invalid user
  I cannot log into application

  As a valid username
  I want to log into application

  Scenario: Invalid login
    Given I open login page
    And I want to wait 2000 milliseconds
    And I see "Zero - Log in" in the title
    And I see "/login" in the URL
    When I fill username with "invalid username"
    And I fill password with "invalid password"
    And I click on submit button
    Then I should see an error message

  Scenario: Valid login
    Given I open login page
    And I reload the browser
    When I fill username with "username"
    And I fill password with "password"
    And I click on submit button
    Then I should see homepage