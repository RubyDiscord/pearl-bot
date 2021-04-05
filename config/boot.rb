ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
require 'bundler/setup'

APP_ENV = ENV['DISCORD_ENV']&.to_sym || :development
Bundler.require(:default, APP_ENV)

loader = Zeitwerk::Loader.new
loader.push_dir(File.expand_path('../lib', __dir__))
loader.setup

require File.expand_path('application', __dir__)
