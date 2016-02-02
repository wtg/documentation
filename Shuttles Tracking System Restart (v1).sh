# Change directories to the live shuttle tracking app 
cd /var/rails/tracking/current

# Start God process monitoring
bundle exec god

# Launch the auto updater 
bundle exec god load config/auto_updater.god

# Check if God is running
bundle exec god status

# Alternative: Or you can look for a running process on the system that looks similar to
ruby /var/rails/tracking/shared/bundle/ruby/1.8/bin/rake RAILS_ENV=production tracking:auto_update
