require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "yardocco"
  gem.homepage = "http://github.com/prepor/yardocco"
  gem.license = "MIT"
  gem.summary = %Q{Docco-style YARD template}
  gem.description = %Q{Docco-style YARD template}
  gem.email = "ceo@prepor.ru"
  gem.authors = ["Andrew Rudenko"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'murdoc', '~> 0.1.6'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new
