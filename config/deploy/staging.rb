set :deploy_to, '/home/deployer/creactive/creactive_app'

# RVM-specific config
set :application, 'creactive'
set :branch, "staging"
set :rails_env, :staging

server '178.62.100.186',
  user: 'deployer',
  roles: %w{web app db},
  ssh_options: {
    port: 3333,
  }

