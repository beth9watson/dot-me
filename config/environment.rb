# Load the Rails application.
require_relative 'application'

# Load local configuration: 
# http://tammersaleh.com/posts/managing-heroku-environment-variables-for-local-development/
require File.join(File.dirname(__FILE__), 'boot')
local_env = File.join(Rails.root, 'config', 'local_env.rb')
load(local_env) if File.exists?(local_env)

# Initialize the Rails application.
Rails.application.initialize!
