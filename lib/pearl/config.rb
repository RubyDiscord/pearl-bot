module Pearl
  class Config
    attr_writer :token
    attr_accessor :prefix
    attr_accessor :client_id

    def token
      return @token unless @token.nil?
      raise "No Token provided"
    end

    def command_config
      self.to_h.select do |key|
        %i[token prefix client_id]
      end
    end

    private

    def to_h
      self.instance_variables.to_h do |v|
        [v[1..].to_sym, instance_variable_get(v)]
      end
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

