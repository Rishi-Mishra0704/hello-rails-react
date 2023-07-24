# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://127.0.0.1:5000' # Replace * with specific origins allowed, e.g., 'http://127.0.0.1:5000'
      resource 'http://127.0.0.1:5000',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'] # Add any custom headers you use in your application
    end
  end
  