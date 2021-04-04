module Pearl
  module Commands
    module Ping
      extend Discordrb::Commands::CommandContainer

      command :ping do |_event|
        return 'Pong!'
      end

      command :random do |_event, min, max|
        rand(min.to_i..max.to_i)
      end
    end
  end
end
