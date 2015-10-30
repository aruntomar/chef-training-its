name             'demo_cookbook'
maintainer       'Arun Tomar'
maintainer_email 'tomar.arun@gmail.com'
license          'All rights reserved'
description      'Installs/Configures demo_cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

recipe 'demo_cookbook::default', 'this is the default demo cookbook'
recipe 'demo_cookbook::user', 'creates a user with key based authentication.'

%w{ubuntu debian}.each do |os|
  supports os
end

depends 'tmux'
