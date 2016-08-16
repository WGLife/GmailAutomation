@send_email
Feature: send emails between accounts
  Scenario: send email from seleniumtest10@gmail.com to seleniumtests30@gmail.com
    Given user goes to Gmail login page
    When user logins with username "seleniumtests10" and password "060788avavav"
    And user clicks Compose button
    And user sends email to "seleniumtests30@gmail.com"
    Then success message with text "Your message has been sent." appears
    And user "seleniumtests30" receives email