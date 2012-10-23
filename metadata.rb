maintainer       "Joshua Timberman"
maintainer_email "cookbooks@housepub.org"
license          "Apache 2.0"
description      "Installs/Configures rng-tools"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.1.0"

%w{ centos fedora redhat ubuntu }.each |os|
  supports os
end
