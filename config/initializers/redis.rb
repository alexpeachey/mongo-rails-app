if ENV["REDIS_URL"]
  REDIS = $redis = Redis.new
else
  if Rails.env.development?
    REDIS = $redis = Redis.new(host: 'localhost', port: 6379, db: 0)
  elsif Rails.env.test?
    REDIS = $redis = Redis.new(host: 'localhost', port: 6379, db: 1)
  end
end