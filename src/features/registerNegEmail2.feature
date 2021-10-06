#Verify invalid inputs in Registration form

Feature: Test input fields (negative)
    In order to keep my product functional
    As a developer or product manager
    I want to make sure that user is informed about mistakes in registration flow

Background:
    Given I open the site "/"
    When the element "a[title='My Account']" is displayed
    And I click on the element "a[title='My Account']"
    Then I expect that element "//a[.='Register']" becomes displayed
    When I click on the element "//a[.='Register']"
    Then I expect that the title is "Register Account"

@Neg_Reg @Email_Reg
Scenario:
    When I add "user1 @getnada.com" to the inputfield "#input-email"
    And  I wait on element "input[type='submit']" to be displayed
    And I click on the element "input[type='submit']"
    Then I expect that the title is not "Your Account Has Been Created!"
