require 'yaml'

config = YAML.load_file('config/database.yml')[APP_ENV.to_s]
             .transform_keys!(&:to_sym)

begin
  DB = Sequel.connect(config)
rescue Sequel::DatabaseConnectionError
  tmp = config.dup
  tmp[:database] = 'postgres'
  Sequel.connect(tmp).run("CREATE DATABASE #{config[:database]}")
  retry
end
