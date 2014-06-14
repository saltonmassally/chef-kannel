name             "kannel"
maintainer       "Salton Massally"
maintainer_email "salton.massally@gmail.com"
license          "MIT"
description      "Installs/Configures Kannel - heavily based on https://github.com/krishnenc/chef-kannel"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w[ubuntu].each do |os|
  supports os
end

