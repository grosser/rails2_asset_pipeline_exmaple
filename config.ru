# Asset pipeline for Rails 2, must be removed on rails 3
# we need to protect against multiple includes of the Rails environment (trust me)
require './config/environment' if !defined?(Rails) || !Rails.initialized?

Rails2AssetPipeline.config_ru(self)

map '/' do
  use Rails::Rack::LogTailer unless Rails.env.test?
  # use Rails::Rack::Debugger unless Rails.env.test?
  use Rails::Rack::Static
  run ActionController::Dispatcher.new
end
