require 'selenium-webdriver'
require 'capybara'
require 'rspec'
require 'capybara/dsl'
require 'site_prism'
require 'allure-cucumber'
require_relative '../step_definitions/pages/login_page'
require_relative '../step_definitions/pages/gmail/base/left_menu_section'
require_relative '../step_definitions/pages/gmail/base/new_email_section'
require_relative '../step_definitions/pages/gmail/base/header_section'
require_relative '../step_definitions/pages/gmail/base/carcass'
require_relative '../step_definitions/pages/gmail/inbox/table_record_section'
require_relative '../step_definitions/pages/gmail/inbox/inbox_page'
require_relative 'webdriver/config'

use_grid = ENV['grid']
browser = ENV['browser']

Config.browser = browser
if use_grid == 'true'
  Config.remote_driver
else
  Config.local_driver
end
Config.setup_driver 'https://mail.google.com', 10