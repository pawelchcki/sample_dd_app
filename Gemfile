source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "redis", ">= 3.2.0", :require => ["redis", "redis/connection/hiredis"]
gem "hiredis", "~> 0.6.0"

gem 'derailed_benchmarks', group: :development
gem 'rails', '~> 5.2.0'
gem 'sqlite3'
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'uglifier', '>= 1.3.0'
gem 'stackprof', group: :development

gem 'resque'

gem 'listen'
gem 'ddtrace' , path: '../../dd-trace-rb'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

