require 'pry'

module Pearl
  module Events
    module Ping
      extend Discordrb::EventContainer

      message(content: 'Ping!') do |event|
        event.channel.send_message 'Pong!'
      end

      message(contains: /.*thank.*/i) do |event|
        event.channel.send_message "#{event.user.name} just said thanks. Kudos to whoever helped them"
      end

      message do |event|
        event.server.channels.select do |channel|
          channel.id == 766_810_408_799_436_800
        end.first.send_message %(
          #{event.user.name} said '#{event.text}' at #{event.timestamp}.
          Here's a link #{event.message.link})
      end
    end
  end
end
