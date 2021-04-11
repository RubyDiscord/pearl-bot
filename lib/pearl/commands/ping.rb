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

      command :me do |event|
        return "You are #{event.user.name}."
      end

      command :eval do |event|
        event.server.channels.select do |channel|
          channel.id == 830_918_481_166_860_299
        end.first.send_message(%(#{event.user.name} is about to run some dirty Eval. Watch Out!))
        $SAFE = 4
        code_to_execute = event.content.match(/(?:```\w{2,3}\s*)(.*)(?=\s*```)/m)[1]
        `ruby -e '#{code_to_execute}'`
      end
    end
  end
end
