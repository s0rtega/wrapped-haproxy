#
# Cookbook Name:: foo
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "nginx"
include_recipe "haproxy"

begin
  r = resources(:template => "#{node['haproxy']['conf_dir']}/haproxy.cfg")
  r.cookbook "foo"
  r.source "haproxy.cfg.erb"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "[HAPROXY] could not find template to override!"
end



