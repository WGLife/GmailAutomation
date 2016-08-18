require_relative '../support/env'

Then(/^home page of mailbox appears$/) do
  @inbox_page = InboxPage.new
  expect(@inbox_page).to be_displayed
end