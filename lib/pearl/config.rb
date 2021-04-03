module Pearl
  class Config
    attr_writer :api_token

    def api_token
      return @api_token unless @api_token.nil?
      raise "No Token provided"
    end
  end

  class << self
    def configure
      yield config
    end

    def config
      @config ||= Config.new
    end
  end
end

