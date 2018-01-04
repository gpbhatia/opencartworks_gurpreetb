Feature:Home page smoke test feature
  @gp1
  Scenario: verify  login link with  valid credentials
    Given user is in home page
    When user clicks on Login
    And user enters data with name as"gptestauto11@gmail.com"  and Password as "testpwd"
    And clicks on "Login" button
    Then  user should login successfully with text "Welcome to Emarket"
    When user clicks on logout link
    Then user should logout successfully

    @gp2
    Scenario: verify login link with invalid credentials
      Given user is in home page
      When user clicks on Login
      And user enters data with name as"gptestauto11@gmail.com"  and Password as ""
      And clicks on "Login" button
      Then  user should not login and displayed the warning message

      @gp3
      Scenario Outline: Register link
        Given user is in home page
        When user clicks on Register link as a new user
        And user enters details as "<FirstName>""<LastName>""<Email>""<Telephone>""<Password>""<PasswordConfirm>"
        Then user should register the account successfully
        Examples:
        |FirstName|LastName|Email             |Telephone|Password|PasswordConfirm|
        |test1    |auto1   |test1auto@gmil.com|test123  |test123 |test123        |


        @gp4
        Scenario: verify All Categories link
          Given user is in home page
          When user hovers over on All Categories link
          Then drop down list should be displayed successfully

          @gp5
          Scenario: verify All Categories drop down functionality
            Given user is in home page
            When user hovers over on All Categories link
            And user selects the Electronics from the drop down list
            Then user should successfully navigate to the Electronics page

            @gp6
            Scenario: verify wish list
              Given user is in home page
               When user clicks on an item "Corem ipsum dolor"
              And clicks on wish list link
              Then user should successfully add the item to the wish list

              @gp7
              Scenario: verify Layout link
                Given user is in home page
                When user hovers on layout link
                Then user should successfully see the drop down layout list

                @gp8
                Scenario: verify Features link
                  Given user is in home page
                  When user hovers on Features link
                  Then  user should successfully see the drop down Features list

                  @gp9
                  Scenario: verify Shop link
                    Given user is in home page
                    When user hovers on Shop link
                    Then  user should successfully see the drop down shop list

                    @gp10
                    Scenario: verify Blog link
                      Given user is in home page
                      When user hovers on Blog link
                      Then  user should successfully see the drop down Blog list

                      @gp11
                      Scenario: verify Pages link
                        Given user is in home page
                        When user hovers on Pages link
                        Then  user should successfully see the drop down Pages list

                        @gp12
                        Scenario: verify add to cart
                          Given  user is in home page
                          When user selects an item "Yutculpa ullamco"
                          And user clicks on Add to cart button
                          Then user should successfully add the item to the cart







