name 'collectd_plugins'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Application cookbook which configures collectd plugins.'
long_description 'Application cookbook which configures collectd plugins.'
version '2.0.5'
source_url 'https://github.com/bloomberg/collectd_plugins-cookbook'
issues_url 'https://github.com/bloomberg/collectd_plugins-cookbook/issues'

supports 'ubuntu', '>= 10.04'
supports 'centos', '>= 5.8'
supports 'redhat', '>= 5.8'
supports 'solaris2'
supports 'aix'

depends 'collectd', '~> 2.0'
