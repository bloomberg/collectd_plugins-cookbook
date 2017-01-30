#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#

include_recipe 'collectd::default'

# This recipe will create a collectd_plugin_file for each python 'instance' that
# has been configured in node. Service user, group, and directory are reused,
# but individual python instances set their cookbook, source, and variable hashes
# seperately
unless node['collectd_plugins']['python_file'].empty?
  node['collectd_plugins']['python_file'].each do |instance, config|
    collectd_plugin_file 'python_file' do
      user node['collectd']['service_user']
      group node['collectd']['service_group']
      directory node['collectd']['service']['config_directory']

      plugin_instance_name instance
      cookbook  config['cookbook']
      source    config['source']
      variables config['variables']
      notifies :restart, "collectd_service[#{node['collectd']['service_name']}]", :delayed
    end
  end
end
