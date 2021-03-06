ENV["TEST"] = "true"
ENV["AUTOLOAD_SPROCKETS"] ||= "false"

require 'sassc'

require 'simplecov'
SimpleCov.root(File.expand_path(File.dirname(__FILE__) + '/../..'))

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

require 'coveralls'
Coveralls.wear!

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))
require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-core')
require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-core', 'step_definitions')
