require_relative '../support/env'

Then(/^home page of mailbox appears$/) do
  @home_page = HomePage.new
  expect(@home_page).to be_displayed
end