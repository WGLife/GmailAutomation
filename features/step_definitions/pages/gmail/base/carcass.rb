class Carcass < SitePrism::Page
  set_url 'https://mail.google.com/mail/#inbox'

  element :message, '.nH .vh'
  section :new_message, NewEmailSection, '.AD>.nH>div'
  section :header, HeaderSection, 'div.qp'
  section :left_menu, LeftMenuSection, '.nM'
end