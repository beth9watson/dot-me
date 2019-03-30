source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "~> 2.4.2"

# include scribble store from repo
gem 'scribble_store', git: 'https://github.com/bethanyvwatson/scribble-store-engine.git' 

#todo remove?
gem 'carrierwave'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'

gem 'autoprefixer-rails'
gem 'bootstrap-sass'
gem 'newrelic_rpm'
gem 'jquery-rails'
gem 'sass-rails'
gem 'slim'
gem 'slim-rails'
gem 'uglifier'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'turbolinks', '~> 5'

gem "octokit", "~> 4.0"
gem "faraday-http-cache"

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
