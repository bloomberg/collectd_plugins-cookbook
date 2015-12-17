name 'collectd_plugins'
maintainer 'Noah Kantrowitz'
maintainer_email 'noah@coderanger.net'
license 'Apache 2.0'
description 'Application cookbook which configures collectd plugins.'
long_description 'Application cookbook which configures collectd plugins.'
version '2.0.1'

supports 'ubuntu', '>= 10.04'
supports 'centos', '>= 5.8'
supports 'redhat', '>= 5.8'

depends 'collectd', '~> 2.0'
