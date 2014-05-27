# encoding: utf-8

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
  gem.name = "social_tokenizer"
  gem.homepage = "http://www.gemvein.com/museum/cases/social_tokenizer"
  gem.license = "MIT"
  gem.summary = %Q{Tokenizes strings for use in social applications.}
  gem.description = %Q{Tokenizes strings for use in social applications.}
  gem.email = "karen.e.lundgren@gmail.com"
  gem.authors = ["Karen Lundgren"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'ci'
end

task :default => :features