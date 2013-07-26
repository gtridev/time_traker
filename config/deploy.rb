set :application, "time_traker"
set :scm, :git
set :repository, "git@github.com:gtridev/time_traker.git"
set :scm_passphrase, "time_traker"

set :user, "cloudfactory"

require 'capistrano/ext/multistage'

server "192.168.2.224", :app, :web, :db, :primary => true
set :deploy_to, "/deploy/time_traker"