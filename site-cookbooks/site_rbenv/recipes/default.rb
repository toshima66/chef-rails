#
# Cookbook Name:: site_rbenv
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.0.0-p481" do
  global true
end

%W{ bundler rbenv-rehash therubyracer pry rake }.each{|gem|
  rbenv_gem gem do
    action :install
  end
}

package "libsqlite3-dev" do
  action :install
end
