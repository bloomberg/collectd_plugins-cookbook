#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'collectd::default'

collectd_plugin 'irq' do
  user node['collectd']['service_user']
  group node['collectd']['service_group']
  directory node['collectd']['service']['config_directory']
  options node['collectd-plugins']['irq']
  notifies :restart, "collectd_service[#{node['collectd']['service_name']}]", :delayed
end
