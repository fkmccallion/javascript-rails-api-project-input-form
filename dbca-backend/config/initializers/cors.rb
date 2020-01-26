Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*" # In prduction, change to a specific hostname

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
