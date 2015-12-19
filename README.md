# collectd_plugins cookbook
[![Build Status](https://img.shields.io/travis/bloomberg/collectd_plugins-cookbook.svg)](https://travis-ci.org/bloomberg/collectd_plugins-cookbook)
[![Code Quality](https://img.shields.io/codeclimate/github/bloomberg/collectd_plugins-cookbook.svg)](https://codeclimate.com/github/bloomberg/collectd_plugins-cookbook)
[![Cookbook Version](https://img.shields.io/cookbook/v/collectd_plugins.svg)](https://supermarket.chef.io/cookbooks/collectd_plugins)
[![License](https://img.shields.io/badge/license-Apache_2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

[Application cookbook][0] which configures [collectd plugins][1].

## Basic Usage
The [default recipe](recipes/default.rb) installs the collectd daemon
and configures the following plugins on the node.

1. [syslog](https://collectd.org/wiki/index.php/Plugin:SysLog)
2. [cpu](https://collectd.org/wiki/index.php/Plugin:CPU)
3. [df](https://collectd.org/wiki/index.php/Plugin:DF)
4. [interface](https://collectd.org/wiki/index.php/Plugin:Interface)
5. [memory](https://collectd.org/wiki/index.php/Plugin:Memory)
6. [swap](https://collectd.org/wiki/index.php/Plugin:Swap)
7. [load](https://collectd.org/wiki/index.php/Plugin:Load)
8. [statsd](https://collectd.org/wiki/index.php/Plugin:StatsD)
9. [unixsock](https://collectd.org/wiki/index.php/Plugin:UnixSock)
10. [uptime](https://collectd.org/wiki/index.php/Plugin:Uptime)

## Advanced Configuration
A [wrapper cookbook][3] can easily be used to fine tune specific settings
for any of the individual plugin recipes. For example, if you wanted to
simply change the syslog level you can do so from a wrapper recipe.

```ruby
node.default['collectd-plugins']['syslog']['log_level'] = 'warn'
include_recipe 'collectd_plugins::default'
```

[0]: http://blog.vialstudios.com/the-environment-cookbook-pattern/#theapplicationcookbook
[1]: https://collectd.org/wiki/index.php/Table_of_Plugins
[2]: https://github.com/bloomberg/collectd-cookbook
[3]: http://blog.vialstudios.com/the-environment-cookbook-pattern/#thewrappercookbook
