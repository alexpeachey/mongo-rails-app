redis: redis-server ./redis.conf
web: bundle exec thin start -p $PORT
danthes: rackup danthes.ru -s thin -E production
worker: ./safe_sidekiq
guard: bundle exec guard