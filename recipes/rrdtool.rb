#
# Cookbook Name:: collectd_plugins
# Recipe:: rrdtool
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

include_recipe "collectd"

collectd_plugin 'rrdtool' do
  user node['collectd']['service_user']
  group node['collectd']['service_group']
  options node['collectd-plugins']['rrdtool']['options'] unless node['collectd-plugins']['rrdtool'].nil?
  notifies :restart, "collectd_service[#{node['collectd']['service_name']}]", :delayed
end
