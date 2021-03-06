require File.expand_path('../boot', __FILE__)

require 'rails/all'
require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsMongoDb
  class Application < Rails::Application
    Mongoid.logger.level = Logger::DEBUG
    Moped.logger.level = Logger::DEBUG
    config.filter_parameters += [:password, :password_confirmation]
  end
end
