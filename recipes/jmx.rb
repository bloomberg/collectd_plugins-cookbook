#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#

include_recipe 'collectd::default'

# This recipe will create a collectd_plugin_file for each jmx 'instance' that
# has been configured in node. Service user, group, and directory are reused,
# but individual jmx instances set their cookbook, source, and variable hashes
# seperately
unless node['collectd_plugins']['jmx'].empty?
  node['collectd_plugins']['jmx'].each do |instance, config|
    collectd_plugin_file "jmx_#{instance}_config" do
      user node['collectd']['service_user']
      group node['collectd']['service_group']
      directory node['collectd']['service']['config_directory']

      plugin_instance_name instance
      cookbook  config['cookbook']
      source    config['source']
      variables config['variables'].merge('hostname' => node['fqdn'])
      notifies :restart, "collectd_service[#{node['collectd']['service_name']}]", :delayed
    end
  end
end
