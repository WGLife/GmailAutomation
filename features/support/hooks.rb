include AllureCucumber::DSL

After do |scenario|
  directory = 'screenshots/'
  if scenario.failed?
    name_of_scenario = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S')
    unless File.directory?(directory)
      FileUtils.mkdir_p(directory)
    end
    file_path = directory + name_of_scenario + '.png'
    attach_file('Screenshot', Capybara.current_session.driver.browser.save_screenshot(file_path), false)
  end
end