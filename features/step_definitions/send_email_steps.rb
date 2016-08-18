require_relative '../support/env'

And(/^user sends email to "([^"]*)"$/) do |recipient|
  @inbox_page = InboxPage.new
  @subject = @inbox_page.carcass.new_message.send_email recipient
end

Then(/^success message with text "([^"]*)" appears$/) do |expected_text|
  expect(@inbox_page.carcass.message).to have_text(expected_text)
end

And(/^user "([^"]*)" receives email$/) do |recipient|
  @inbox_page.carcass.header.logout
  login_page = LoginPage.new
  login_page.load
  login_page.login recipient, '060788avavav'

  found = false
  @inbox_page.table_records.each do |record|
    found = true if record.subject.text == @subject + 'sas'
  end
  expect(found).to be(true)
end