worker_processes 2 # amount of unicorn workers to spin up
timeout 40        # restarts workers that hang for 40 seconds
preload_app true   # https://newrelic.com/docs/troubleshooting/im-using-unicorn-and-i-dont-see-any-data

# https://gist.github.com/1401792

before_fork do |server, worker|
  # Replace with MongoDB or whatever
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
    Rails.logger.info('Disconnected from ActiveRecord')
  end

  sleep 1
end

after_fork do |server, worker|
  # Replace with MongoDB or whatever
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
    Rails.logger.info('Connected to ActiveRecord')
  end
end