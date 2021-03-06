require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreeAd
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Seoul'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ko
    I18n.enforce_available_locales=true
    #config.cache_store = :redis_store, 'redis://localhost:6379/0/cache', { expires_in: 10.days}
    #config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.assets.paths << Rails.root.join("app", "assets", "fonts")       
  end
end
