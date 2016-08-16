@login
Feature: login to gmail
  Scenario Outline: login
    Given user goes to Gmail login page
    And logout from gmail if need
    When user logins with username "<username>" and password "<password>"
    Then home page of mailbox appears

    Examples:
    |     username    |   password   |
    | seleniumtests10 | 060788avavav |
    | seleniumtests30 | 060788avavav |