Feature: checking the functionality of Search
@search1
  Scenario Outline: Verify search bar- Happy path
    Given user is in home page
    And user clicks on popup close button
    When user enters search product "<productName>" in search bar
    Then search product is displayed
    Examples:
    |productName       |
    |Lommodo quiutvenia|
    |Neatball bresaola |
@search2
  Scenario: Verify search bar-Negative Test
    Given user navigates to home page
    And user  clicks on popup close button
    When user enters "Bags" in search bar
    And  user clicks on search icon
    Then search page is not displayed
@search3
    Scenario: Verify ALL CATEGORIES
      Given user is in home page
      And  clicks on popup close button
      When user hovers over Gifts & Toys
      Then categories page is displayed
@search4
   Scenario: Verify ALL CATEGORIES- Gifts & Toys
     Given user navigates to Gifts & Toys page
     When user search in search field with product name "Ben"
     Then product is displayed with datails
@search5
   Scenario: Verify ALL CATEGORIES- Gifts & Toys-SELECT
     Given user navigates to Gifts & Toys page
     When user selects the Select option
     Then Select drop down list is dispplayed
     And user selects the drop down option Red
     Then option Red collection page is displayed
@search6
   Scenario: Verify ALL CATEGORIES- Gifts & Toys-MANUFACTURER
     Given user navigates to Gifts & Toys page
     When user selects the Manufacturer option
     Then Manufacturer list is displayed
     And user selects the drop down option Apple
     Then option Apple collection page is displayed
@search7
Scenario: Verify ALL CATEGORIES- Gifts & Toys-Price
  Given  user navigates to Electronics
  When  user selects the Price option
  Then Price display block is displayed





