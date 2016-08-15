require_relative '../support/env'

Then(/^user clicks Compose button$/) do
  @nav = Navigation.new
  @nav.left_menu.compose
end