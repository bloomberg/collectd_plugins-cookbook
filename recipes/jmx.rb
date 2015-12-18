#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'collectd::default'

collectd_plugin_file 'jmx' do
  user node['collectd']['service_user']
  group node['collectd']['service_group']
  directory node['collectd']['service']['config_directory']
  plugin_instance_name node['collectd-plugins']['jmx']['plugin_instance_name']
  cookbook node['collectd-plugins']['jmx']['cookbook']
  source node['collectd-plugins']['jmx']['source']
  variables node['collectd-plugins']['jmx']['variables'].merge( 'hostname' => node['fqdn'] )
  notifies :restart, "collectd_service[#{node['collectd']['service_name']}]", :delayed
end
