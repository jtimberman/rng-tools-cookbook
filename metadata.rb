name             "rng-tools"
maintainer       "Joshua Timberman"
maintainer_email "cookbooks@housepub.org"
license          "Apache 2.0"
description      "Installs/Configures rng-tools"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.1.0"

%w{ centos fedora scientific oracle amazon redhat debian ubuntu linuxmint }.each do |os|
  supports os
end
