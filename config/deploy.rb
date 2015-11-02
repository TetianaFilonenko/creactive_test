# config valid only for current version of Capistrano
lock '3.4.0'
set :log_level, :debug
set :repo_url, 'git@github.com:TetianaFilonenko/creactive_test.git'

set :stages, %w(production staging)

set :rvm_ruby_version, '2.1.2@creactive'

set :linked_files, %w{config/database.yml config/secrets.yml config/fog_credentials.yml config/social.yml}
set :linked_dirs, %w{log tmp/pids public/uploads public/assets public/system public/certificate}

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:legacy_restart'
  end
end


