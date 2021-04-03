module Pearl
  module Commands
    module Ping
      extend Discordrb::Commands::CommandContainer

      command :ping do |event|
        return "Pong!"
      end

      command :random do |event, min, max|
        rand(min.to_i..max.to_i)
      end
    end
  end
end

