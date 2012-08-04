# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'rake'
require 'jeweler'
require 'rspec/core/rake_task'
require 'yard'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "noitehoje"
  gem.homepage = "http://github.com/felipecsl/noitehoje"
  gem.license = "MIT"
  gem.summary = %Q{noitehoje.com.br API Client}
  gem.description = %Q{Ruby implementation for a noitehoje.com.br API Client}
  gem.email = "felipe.lima@gmail.com"
  gem.authors = ["Felipe Lima"]
  gem.required_ruby_version = ">= 1.9"
  # dependencies defined in Gemfile
end

Jeweler::RubygemsDotOrgTasks.new

RSpec::Core::RakeTask.new(:spec)

task :test => :spec
task :default => :spec

YARD::Rake::YardocTask.new