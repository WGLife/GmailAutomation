require_relative '../support/env'

And(/^user sends email to "([^"]*)"$/) do |recipient|
  @home_page = HomePage.new
  @subject = @home_page.new_message.send_email recipient
end

Then(/^success message with text "([^"]*)" appears$/) do |expected_text|
  expect(@home_page.message).to have_text(expected_text)
end

And(/^user "([^"]*)" receives email$/) do |recipient|
  @home_page.header.logout
  login_page = LoginPage.new
  login_page.load
  login_page.login recipient, "060788avavav"

  found = false
  inbox_page = InboxPage.new
  inbox_page.table_records.each do |record|
    found = true if record.subject.text == @subject + "sas"
  end
  expect(found).to be(true)
end