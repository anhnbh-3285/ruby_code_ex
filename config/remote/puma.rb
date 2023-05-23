# puma configuration

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads 0, threads_count
workers ENV.fetch("WEB_CONCURRENCY") { 1 }

preload_app!

root_dir = Dir.pwd

environment ENV.fetch("RAILS_ENV") { "development" }
daemonize false

# bind "tcp://0.0.0.0:3000"
shared_dir = root_dir.gsub(/releases\/\d{14}/,"shared")
pidfile ENV.fetch('PIDFILE') { File.join(shared_dir, "tmp", "pids", "puma.pid") }
state_path ENV.fetch('STATEFILE') { File.join(shared_dir, "tmp", "pids", "puma.state") }
bind "unix://#{shared_dir}/tmp/sockets/puma.sock"

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

plugin :tmp_restart
