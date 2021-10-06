# Verify users are registered

Feature: Test if user can register on site
    In order to keep my product functional
    As a developer or product manager
    I want to make sure that user can register on site

Background:
    Given I open the site "/"

@E2E_Reg
Scenario: Test if I can open a Register Account page and register user
    Given the element "a[title='My Account']" is displayed
    When I click on the element "a[title='My Account']"
    Then I expect that element "//a[.='Register']" becomes displayed
    When I click on the element "//a[.='Register']"
    Then I expect that the title is "Register Account"
    When I add "Maya" to the inputfield "#input-firstname"
    And I add "Kirkalicheva" to the inputfield "#input-lastname"
    And I add "user18@getnada.com" to the inputfield "#input-email"
    And I add "12345678" to the inputfield "#input-telephone"
    And I add "1234" to the inputfield "#input-password"
    And I add "1234" to the inputfield "#input-confirm"
    And  I click on the element "input[name='agree']"
    Then  I expect that checkbox "input[name='agree']" is checked
    When I click on the element "input[type='submit']"
    Then I expect that the title is "Your Account Has Been Created!"

