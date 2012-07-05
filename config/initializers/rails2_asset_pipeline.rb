if Rails.env.development? # dynamic asset compilation needs these
  require 'coffee-script' # need coffee ?
  require 'sprockets/sass' # need sass ?
  autoload :Sass, 'sass' # require if used inside rake tasks <-> require 'sass' takes 0.8s
end

Rails2AssetPipeline.setup do |sprockets|
  # ... additional config ...
end
