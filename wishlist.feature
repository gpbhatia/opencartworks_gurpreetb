Feature: Functionality of wishlist link
@wish1
  Scenario: Wishlist link on top menu bar as a non registered user
    Given user is in home page
    When user clicks on wishlist link
    Then Account login page is displayed

  @wish2
 Scenario:Wishlist link on the top menu bar as a registered user
    Given user is in home page
    When user clicks on wishlist link
    Then user should navigates to the wishlist page


 @wish3
Scenario: Add product to the wishlist
   Given user navigates to the product page
   When user selects the product"Asdipiscing"
   Then user is displayed the product page
   And user clicks on add to wishlist
   Then success message should displayed
   But error message is displayed"Some items are already listed on eBay so have been removed"



