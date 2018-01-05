Feature: Functionality of checkout link

  @checkout1
 Scenario: checkout link on the top menu bar
    Given user is in home page
    When user clicks on checkout link
    Then Shopping Cart page is displayed

  @checkout2
 Scenario:  Verify checkout link
    Given user navigates to home page
    When user selects a product "Proident leerkas"
    And adds the product to the cart on home page
    Then product page is displayed description
    And adds the product on the product page
    Then Select required message displays
    And user selects the option name Red
    Then user clicks on add to cart button
    And success message displayed
    When user hovers on My cart link
    Then checkout list displays
