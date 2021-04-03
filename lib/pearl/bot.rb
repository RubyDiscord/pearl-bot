require_relative 'commands/ping'
module Pearl
  class Bot < Discordrb::Commands::CommandBot
    def initialize(args)
      super(args)
      include! Commands::Ping
    end

    class << self
      def run
        new(Pearl.config.command_config).run
      end
    end
  end
end
