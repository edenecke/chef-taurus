name 'taurus'
maintainer 'Perf Suite'
maintainer_email 'perf-suite@outlook.com'
license 'Apache 2.0'
description 'Installs/Configures taurus performance tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.1.0'
source_url 'https://github.com/perf-suite/taurus'
issues_url 'https://github.com/perf-suite/taurus/issues'

supports 'centos'
supports 'ubuntu'

depends 'ark'
depends 'build-essential'
depends 'apt'
depends 'yum-epel'
depends 'java'
depends 'python'