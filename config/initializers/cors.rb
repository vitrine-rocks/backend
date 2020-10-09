Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV['FRONTEND_HOST'].split(' ')
    resource '*', headers: :any, credentials: true,
                  expose: %w[Authorization Link Per-Page Total],
                  methods: %i[get post put patch delete options head]
  end
end
