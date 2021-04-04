require 'discordrb'
require_relative 'lib/pearl'

Pearl.configure do |config|
  config.token = ""
  config.client_id = ""
  config.prefix = "pearl!"
end

Pearl::Bot.run
