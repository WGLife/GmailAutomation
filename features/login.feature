Feature: login to gmail
  Scenario: login
    Given user goes to Gmail login page
    When user logins with username "seleniumtests10" and password "060788avavav"
    Then home page of mailbox appears