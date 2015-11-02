set :deploy_to, '/home/creactive/creactive_app'

# RVM-specific config
set :application, 'creactive'
set :branch, "master"
set :rails_env, :production

server '178.62.100.186',
  user: 'deployer',
  roles: %w{web app db} #,
  # ssh_options: {
  #   port: 3333,
  # }

