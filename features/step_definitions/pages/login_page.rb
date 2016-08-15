class LoginPage < SitePrism::Page
  set_url "https://mail.google.com"

  element :email_input, "#Email"
  element :next_button, "#next"
  element :password_input, "#Passwd"
  element :sign_in_button, "#signIn"
  element :i_agree_button, "#optionsButton~div>div+div"

  def login(email, password)
    email_input.set email
    next_button.click
    password_input.set password
    sign_in_button.click
  end
end