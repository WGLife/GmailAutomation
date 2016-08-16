require_relative '../support/env'

Given(/^user goes to Gmail login page$/) do
  @login_page = LoginPage.new
  @login_page.load
end

When(/^user logins with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @login_page.login username, password
end

And(/^logout from gmail if need$/) do
  unless @login_page.has_email_input?
    home_page = HomePage.new
    home_page.header.logout
    @login_page.load
  end
end