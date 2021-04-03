module Pearl
  class Bot < Discordrb::Bot
    class << self
      def run
        bot = new(token: Pearl.config.api_token)
        bot.message(content: "Ping!") do |event|
         event.respond "Pong!"
        end
        bot.run
      end
    end
  end
end
