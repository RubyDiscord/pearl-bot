class Pearl < Discordrb::Bot
  class << self
    def run
      bot = new(token: "")
      bot.message(content: "Ping!") do |event|
        event.respond "Pong!"
      end
      bot.run
    end
  end
end
