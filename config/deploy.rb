require 'rvm/capistrano'
require 'bundler/setup'
require 'bundler/capistrano'
require './config/boot'
require 'capistrano/ext/multistage


set :application, "time_traker"
set :repository,  "time_traker"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "192.168.2.224"                        
role :app, "192.168.2.224"                        

set :user,"cloudfactory"





