#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#

default['collectd-plugins']['rrdtool']['data_dir'] = '/etc/collectd.d/rrd'
default['collectd-plugins']['syslog']['log_level'] = 'info'
default['collectd-plugins']['interface']['interface'] = 'lo'
default['collectd-plugins']['interface']['ignore_selected'] = true
default['collectd-plugins']['df']['report_reserved'] = false
default['collectd-plugins']['df']['ignore_selected'] = true
default['collectd-plugins']['df']['f_s_type'] = %w(proc sysfs fusectl debugfs securityfs devtmpfs devpts tmpfs)
default['collectd_plugins']['jmx'] = {}
