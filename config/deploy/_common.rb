set :deploy_to, "/home/deploy/#{application}/#{stage}"

require 'capistrano-unicorn'

set :unicorn_binary, "bundle exec unicorn_rails"
set :unicorn_config, "#{current_path}/config/unicorn/#{stage}.rb"
set :unicorn_pid, "#{current_path}/tmp/pids/unicorn.pid"

before 'deploy:setup', 'rvm:install_ruby'
after 'deploy:restart', :oguni#,'unicorn:restart'

task :oguni do
  run "logger oguni task start"
  #run "cp -a  /home/deploy/#{application}/#{stage}/shared/production/database.yml #{current_path}/config/database.yml"    
end
namespace :deploy do
  task :start, :roles => :app do
    run "cd #{current_path}; bundle exec unicorn_rails -c config/unicorn.rb -E #{rails_env} -D"
  end
  task :restart, :roles => :app do
    run "echo #{current_path}/tmp/pids/unicorn.pid"
    path = "#{current_path}/tmp/pids/unicorn.pid"
    run "cat #{path}"

    #if File.exist? "#{current_path}/tmp/pids/unicorn.pid"
    #  run "kill -s USR2 `cat #{current_path}/tmp/unicorn_#{application}.pid`"
    #else 
    #  run "echo not found"
    #end
  end
  task :stop, :roles => :app do
    run "kill -s QUIT `cat #{current_path}/tmp/pids/unicorn.pid`"
  end
end
=begin
namespace :deploy do
  task :restart, :except => { :no_release => true } do
    run "logger restart task start"
    run "export A=A"
  end



  #task :finalize_update, :except => { :no_release => true } do
  #run "logger finalize_update task start"
  #run "mv -f #{latest_release}/config.yml.prod #{latest_release}/config.yml"
  #end
end
=end