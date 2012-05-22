# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

begin
  require "rails2_asset_pipeline/tasks"
rescue LoadError
  puts "rails2_asset_pipeline is not installed, you probably should run 'rake gems:install' or 'bundle install'."
end
