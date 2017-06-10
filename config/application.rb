require_relative 'boot'

require 'rails/all'
require 'neo4j/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RedeDeConluios
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.neo4j.session_type = :server_db
    config.neo4j.session_path = ENV['NEO4J_URL'] || 'neo4j:ricardo23@http://localhost:7474'
  end
end
