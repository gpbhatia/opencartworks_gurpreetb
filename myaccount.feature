Feature: checking functionality of My account link on top menu bar
@MyAccount1
  Scenario: My Account link
    Given user is in home page
    When user hovers over my account link
    Then drop down menu is displayed

 @MyAccount2
 Scenario: My Account link menu links-wishlist
   Given user is in home page
   When user hovers over my account link
   And user selects the menu link wishlist
   Then My wishlist page is displayed

 @MyAccount3
 Scenario: My Account link menu link-compare
   Given user is in home page
   When user hovers over my account link
   And user selects the menu link compare
   Then Product comparision page is displayed

  @MyAccount4
  Scenario: My Account link menu link-order history
    Given user is in home page
    When user hovers over my account link
    And user selects the menu link order history
    Then Order history page is displayed

  @MyAccount5
  Scenario: My Account link menu link-Transactions
    Given user is in home page
    When user hovers over my account link
    And user selects the menu link Transactions
    Then Your transactions page is displayed

  @MyAccount6
  Scenario: My Account link menu link-Downloads
    Given user is in home page
    When user hovers over my account link
    And user selects the menu link
    Then Your downloads  page is displayed

  @MyAccount7
  Scenario: My Account link menu link-Logout
    Given user is in home page
    When user hovers over my account link
    And user selects the menu link logout
    Then Account logout page is displayed






