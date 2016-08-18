require_relative '../support/env'

And(/^logout from gmail if need$/) do
  @carcass = Carcass.new
  @login_page = LoginPage.new

  unless @login_page.has_email_input?
    @carcass.header.logout
    @login_page.load
  end
end

Then(/^user clicks Compose button$/) do
  @carcass.left_menu.compose
end