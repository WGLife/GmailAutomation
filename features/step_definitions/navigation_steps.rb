require_relative '../support/env'

And(/^logout from gmail if need$/) do
  @carcass = Carcass.new
  @login_page = LoginPage.new

  unless @login_page.has_email_input?
    if @login_page.has_password_input?
      Capybara.current_session.driver.browser.manage.delete_all_cookies
    else
      @carcas.header.logout
    end
    @login_page.load
  end
end

Then(/^user clicks Compose button$/) do
  @carcass.left_menu.compose
end