require_relative '../support/env'

Given(/^user goes to Gmail login page$/) do
  @login_page = LoginPage.new
  @login_page.load
end

When(/^user logins with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @login_page.login username, password
end