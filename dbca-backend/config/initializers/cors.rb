Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*" # In production, change to a specific hostnames

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
