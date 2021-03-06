set :application, 'mobileweb'
set :repo_url, 'git@github.com:sleepinglion/free_ad.git'
set :branch, 'master'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/mobileweb'

# Default value for :scm is :git
set :bundle_env_variables, { nokogiri_use_system_libraries: 1 }
# Default value for :format is :airbrussh.
# set :format, :airbrussh

#set :default_env, {"RAILS_RELATIVE_URL_ROOT" => "/GeneAdmin"}
set :passenger_restart_with_touch, true
# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
append :linked_files, '.env','config/database.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads', 'public/ckeditor'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

#namespace :deploy do
#  after :finishing, 'deploy:cleanup'
#end
