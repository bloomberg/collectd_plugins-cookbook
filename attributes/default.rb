#
# Cookbook Name:: collectd_plugins
# Recipe:: interface
#
# Copyright 2010, Atari, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['collectd-plugins']['rrdtool']['options']['DataDir'] = '/etc/collectd.d/rrd'
default['collectd-plugins']['syslog']['options']['LogLevel'] = 'Info'
default['collectd-plugins']['interface']['options']['Interface'] = 'lo'
default['collectd-plugins']['interface']['options']['IgnoreSelected'] = true
default['collectd-plugins']['df']['options']['ReportReserved'] = false
default['collectd-plugins']['df']['options']['IgnoreSelected'] = true
default['collectd-plugins']['df']['options']['FSType'] = %w(proc sysfs fusectl debugfs securityfs devtmpfs devpts tmpfs)
