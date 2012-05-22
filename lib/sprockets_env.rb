sprockets = Sprockets::Environment.new
sprockets.append_path 'app/assets/images'
sprockets.append_path 'app/assets/javascripts'
sprockets.append_path 'app/assets/stylesheets'
SPROCKETS_ENV = sprockets
