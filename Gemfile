source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Post-Installed Gems
# -- END -- 

group :development, :test do
  gem 'byebug', platform: :mri

  # Post-Installed Gems
  gem 'rspec-rails'
  gem 'pry-rails'
  # -- END --
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Post-Installed gems
  gem 'capybara'
  # -- END --
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
