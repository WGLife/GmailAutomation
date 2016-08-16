require 'capybara'
require 'rspec'
require 'capybara/dsl'
require 'site_prism'
require 'allure-cucumber'
require_relative '../step_definitions/pages/login_page'
require_relative '../step_definitions/pages/gmail/left_menu_section'
require_relative '../step_definitions/pages/gmail/new_email_section'
require_relative '../step_definitions/pages/gmail/header_section'
require_relative '../step_definitions/pages/gmail/home/home_page'
require_relative '../step_definitions/pages/gmail/navigation/navigation'
require_relative '../step_definitions/pages/gmail/inbox/table_record_section'
require_relative '../step_definitions/pages/gmail/inbox/inbox_page'

Capybara.javascript_driver = :firefox
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10