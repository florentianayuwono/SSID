SSID::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # watch for changes in source code
  config.file_watcher = ActiveSupport::FileUpdateChecker

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # mailer config
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.delivery_method = :file
  config.action_mailer.file_settings = {
    :location => Rails.root.join('tmp/mails') 
  }

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  # config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = true

  # Expands the lines which load the assets
  config.assets.debug = true

  # allow local storae use for file uploads
  # config.active_storage.service = :local

  # whitelist attributes for mass-assignment
  # config.active_record.whitelist_attributes = true

  config.eager_load = false
  
  # Set time zone
  config.time_zone = "Singapore"

  config.host = "localhost:3000"
  config.action_mailer.default_url_options = { host: config.host, protocol: 'http' }

  config.protocol = "http"

  config.eager_load = false

  config.web_console.permissions = '172.20.0.1'
end
