require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CaptainDuck
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # lib配下をオートロードの対象とする
    config.autoload_paths += Dir[Rails.root.join('lib')]
    config.autoload_paths += Dir[Rails.root.join('lib', '**', '*')]

    # development/productionどちらでもAutoloadを行う
    config.enable_dependency_loading = true

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    config.active_record.default_timezone = :local

    # cron処理用のlogger
    config.cron_logger = Logger.new('log/cron.log', 'weekly')

    # Not create test files
    config.generators do |g|
      g.test_framework false
    end
  end
end
