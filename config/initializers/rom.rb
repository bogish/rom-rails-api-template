ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [
    :sql,
    ENV.fetch('DATABASE_URL'),
    extensions: [:pg_json],
    not_inferrable_relations: [:schema_migrations]
  ]
end
