require_relative 'boot'
require "action_cable"
require 'rails/all'
require 'active_support'

ActiveRecord::SchemaDumper.ignore_tables = /^sqlite_*/
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths += %W(#{config.root}/app/channels)
  end
end
