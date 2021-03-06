class HeaderSection < SitePrism::Section
  element :profile_image, "a[href*='SignOutOptions']"
  element :sign_out_button, "a[href*='Logout']"

  def logout
    profile_image.click
    sign_out_button.click
    Capybara.current_session.driver.browser.manage.delete_all_cookies
  end
end
