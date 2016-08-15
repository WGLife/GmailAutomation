class LeftMenuSection < SitePrism::Section
  element :inbox_link, ".aim a[href*='#inbox']"
  element :starred_link, ".aim a[href*='#starred']"
  element :sent_email_link, ".aim a[href*='#sent']"
  element :drafts_link, ".aim a[href*='#drafts']"
  element :more_dropdown, ".n6 .CJ"
  element :compose_button, ".z0>div"
  element :gmail_dropdown, ".aki>div"

  def compose
    compose_button.click
  end
end