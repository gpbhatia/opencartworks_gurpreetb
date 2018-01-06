Feature: checking functionality of shop link
@shop1
  Scenario:  Verify shop link-Smartphone
    Given user is in home page
    When user clicks on Smartphone link
    Then user is navigated to Smartphone page
@shop2
 Scenario: Verify shop link-Electronics
    Given user is in home page
    When user clicks on Electronics link
    Then user is navigated to Electronics page

@shop3
 Scenario:  Verify shop link-sofa & Chairs
   Given user is in home page
   When user clicks on Sofa & Chairs  link
   Then user is navigated to Sofa & Chairs  page
