#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#

default['collectd-plugins']['rrdtool']['options']['data_dir'] = '/etc/collectd.d/rrd'
default['collectd-plugins']['syslog']['options']['log_level'] = 'info'
default['collectd-plugins']['interface']['options']['interface'] = 'lo'
default['collectd-plugins']['interface']['options']['ignore_selected'] = true
default['collectd-plugins']['df']['options']['report_reserved'] = false
default['collectd-plugins']['df']['options']['ignore_selected'] = true
default['collectd-plugins']['df']['options']['f_s_type'] = %w(proc sysfs fusectl debugfs securityfs devtmpfs devpts tmpfs)
