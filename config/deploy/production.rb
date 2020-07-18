# production
#deploy_to = '/home/deployer/railsapps/pile'
#keep_releases = 2
#server_command = "/home/deployer/.rbenv/bin/rbenv exec bundle exec pumactl -F /home/deployer/railsapps/pile/shared/puma.rb phased-restart"
#app_current = '/home/deployer/railsapps/pile/current'
#branch = :master

#staging
deploy_to = '/home/deployer/railsapps/pile_staging'
keep_releases = 2
server_command = "/home/deployer/.rbenv/bin/rbenv exec bundle exec pumactl -F /home/deployer/railsapps/pile_staging/shared/puma.rb phased-restart"
app_current = '/home/deployer/railsapps/pile_staging/current'
branch = :dev

# Default branch is :master
set :branch, branch

# Default deploy_to directory is /var/www/my_app
set :deploy_to, deploy_to

# Default value for keep_releases is 5
set :keep_releases, keep_releases

namespace :deploy do
  desc 'Restart application by restarting puma service'
  task :restart do
    on roles(:app) do
      execute "cd '#{app_current}'; #{server_command}"
    end
  end

  after :publishing, :restart

  #after :restart, :clear_cache do
  #  on roles(:web), in: :groups, limit: 3, wait: 10 do
  #    # Here we can do anything such as:
  #    #within release_path do
  #    #  execute :rake, 'cache:clear'
  #    #end
  #  end
  #end

  after :finishing, 'deploy:cleanup'
end



# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
