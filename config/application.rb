require_relative 'boot'

require 'rails/all'
require 'active_support/core_ext/string'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module_name = (`echo $REPO_URL`.gsub("\n", "").presence || Dir.pwd.gsub(/(releases|current)\/\d+/,"")).split("/").last.gsub(".git","").underscore.camelize

Object.const_set(module_name, Module.new)
      .const_set('Application', Class.new(Rails::Application) do
  # Initialize configuration defaults for originally generated Rails version.
  config.load_defaults 6.0
  config.time_zone = 'Asia/Tokyo'
  config.active_record.default_timezone = :local
  config.active_record.time_zone_aware_attributes = false

  config.i18n.load_path += Dir["#{Rails.root}/config/locales/**/*.yml"]

  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration can go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded after loading
  # the framework and any gems in your application.
  Dir.glob("config/routes/*").each do |route|
    config.paths["config/routes.rb"] << Rails.root.join(route)
  end
end)
