class Config

  class << self

    attr_writer :browser

    def setup_driver(app_host, implicit_waiter, run_server=false)
      Capybara.configure do |config|
        config.run_server = run_server
        config.app_host = app_host
        config.default_max_wait_time = implicit_waiter
      end
      Capybara.current_session.driver.browser.manage.window.maximize

      # SitePrism.configure do |config|
      #   config.use_implicit_waits = true
      # end
    end

    def local_driver
      Capybara.javascript_driver = :firefox
      Capybara.default_driver = :selenium
      if @browser == 'chrome'
        Capybara.register_driver :selenium do |app|
          Capybara::Selenium::Driver.new(app, :browser => :chrome)
        end
        Capybara.javascript_driver = :chrome
        Capybara.default_driver = :selenium
      end
    end

    def remote_driver(hub_url='http://localhost:4444/wd/hub')
      caps = Selenium::WebDriver::Remote::Capabilities.firefox
      caps = Selenium::WebDriver::Remote::Capabilities.chrome if @browser == 'chrome'
      Capybara.register_driver :remote_browser do |app|
        Capybara::Selenium::Driver.new(app, browser: :remote, url: hub_url, desired_capabilities: caps)
      end
      Capybara.javascript_driver = :remote_browser
      Capybara.default_driver = :remote_browser
    end

  end
end