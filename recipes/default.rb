#
# Cookbook: collectd_plugins
# License: Apache 2.0
#
# Copyright 2010, Atari, Inc
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'collectd::default'
include_recipe 'collectd_plugins::syslog'
include_recipe 'collectd_plugins::cpu'
include_recipe 'collectd_plugins::df'
include_recipe 'collectd_plugins::interface'
include_recipe 'collectd_plugins::memory'
include_recipe 'collectd_plugins::swap'
include_recipe 'collectd_plugins::load'
include_recipe 'collectd_plugins::statsd'
include_recipe 'collectd_plugins::unixsock'
include_recipe 'collectd_plugins::uptime'
