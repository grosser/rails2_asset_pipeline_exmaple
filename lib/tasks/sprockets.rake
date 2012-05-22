require 'rake/sprocketstask'
require 'sprockets_env'

namespace :sprockets do
  Rake::SprocketsTask.new do |t|
    t.environment = SPROCKETS_ENV
    t.output = "./public/assets"
    t.assets = SPROCKETS_ENV.paths.map{|p| Dir["#{p.sub(Rails.root.to_s,'')}/**/*"] }.flatten
  end
end

namespace :assets do
  task :precompile => "sprockets:assets"
end

