require 'discordrb'
require_relative 'lib/pearl'

Pearl.configure do |config|
  config.api_token = ""
end

Pearl::Bot.run

