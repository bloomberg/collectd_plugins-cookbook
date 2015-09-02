#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'collectd::default'

cookbook_file File.join(node[:collectd][:plugin_dir], "redis.py") do
  owner "root"
  group "root"
  mode "644"
end

servers = []
if node[:recipes].include? "redis::server"
  servers << "localhost"
else
  search(:node, 'recipes:"redis::server"') do |server|
    servers << server["fqdn"]
  end
end

collectd_python_plugin "redis" do
  options :host=>servers, :verbose=>true
end
