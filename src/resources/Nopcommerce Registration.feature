Feature: Nopcommerce Registration

  As a User, I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given  I open the Google Chrome Browser
    When   I open the Url https://demo.nopcommerce.com/register
    Then   I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When   I enter first name "<First Name>"
    And    I enter last name "<Last Name>"
    And    I enter Email address "<Email>"
    And    I enter Password "<Password>"
    And    I enter Confirm Password "<Confirm Password>"
    And    Click on Register button
    Then   I can see an error message "<error message>"
    And    I am not able to register

    Examples:
      | First Name | Last Name | Email           | Password | Confirm Password | error messsage                             |
      | ""         | patel     | kapil@gmail.com | 123456   | 123456           | please enter First Name                    |
      | kapil      | ""        | kapil@gmail.com | 123456   | 123456           | please enter Last Name                     |
      | kapil      | patel     | ""              | 123456   | 123456           | please enter valid email                   |
      | kapil      | patel     | kapil@gmail.com | ""       | 123456           | password is required                       |
      | kapil      | patel     | kapil@gmail.com | 123456   | ""               | confirm password is required               |
      | kapil      | patel     | kapil@gmail.com | 123456   | 123456           | password and confirm password do not match |
      | kapil      | patel     | kapil@gmail.com | 123456   | ""               | minimum 6 character password is required   |
      | ""         | ""        | ""              | ""       | ""               | Mandatory (*) filed is required            |

  Scenario: I should be able to select any one radio button from Gender Label of Your Personal Details section
    Given   I am on Gender label of Your personal detail section
    When    I select "Male" radio button
    And     I select "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
    Given  I am on Date of Birth field of Your Personal Detail section
    When   I select day "<Day>"
    And    I select month "<Month>"
    And    I select Year "<Year>"
    Then   I am able to select Day, Month and year from drop down list

    Examples:
      | Day | Month   | Year |
      | 1   | January | 2000 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given  I am on Newsletter label on Options section
    When   I click on Newsletter checkbox
    And    I again click on Newsletter Checkbox
    Then   I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When  I enter First name "kapil"
    And   I enter Last name "patel"
    And   I enter Email "kapil@gmail.com"
    And   I enter Password "123456"
    And   I enter Confirm Password "123456"
    And   I click on Register button
    Then  I was able to register successfully










