set :application, "time_traker"
set :repository,  "git@github.com:gtridev/time_traker.git"

#set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
#Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "192.168.2.224"                          # Your HTTP server, Apache/etc
role :app, "192.168.2.224"                          # This may be the same as your `Web` server

set :scm, :git


ssh_options[:forward_agent] = true
ssh_options[:port] = 22
default_run_options[:pty] = true

# change the branch by using -s branch=branchname on the command line
set :branch, fetch(:branch, 'master')

set :deploy_via, :remote_cache
set :deploy_to, "~/deploy/time_traker"

set :user, "cloudfactory"
set :use_sudo, false
