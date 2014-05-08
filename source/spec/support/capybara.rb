require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new(app,
    :inspector => true,
    :debug => true,
    :js_errors => false
  )
end

Capybara.javascript_driver = :poltergeist
# Capybara.javascript_driver = :poltergeist_debug

Capybara.app_host = 'http://localhost'
Capybara.default_wait_time = 15
Capybara.server_port = 31337
Capybara.default_selector = :css


def wait_ajax(tout = Capybara.default_wait_time)
  page.wait_until(tout) do
    page.evaluate_script 'jQuery.active == 0'
  end
end
