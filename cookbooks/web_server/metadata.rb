name 'web_server'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures web_server'
long_description 'Installs/Configures web_server'
version '0.1.0'


%w{ubuntu centos}.each do |os|
  supports os
end
