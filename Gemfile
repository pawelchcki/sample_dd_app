source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'derailed_benchmarks', group: :development
gem 'rails', '~> 5.2.0'
gem 'sqlite3'
gem 'delayed_job'
gem 'delayed_job_active_record'
#gem 'puma', '~> 3.11'
#gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
#gem 'coffee-rails', '~> 4.2'
#gem 'turbolinks', '~> 5'
#gem 'jbuilder', '~> 2.5'
#gem 'bootsnap', '>= 1.1.0', require: false
gem 'stackprof', group: :development


gem 'listen'
gem 'ddtrace', path: '../../dd-trace-rb'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

