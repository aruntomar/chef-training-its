websites = [
  {"server_name"=>"abc.com", "server_admin"=>"admin@abc.com" },
  {"server_name"=>"xyz.com", "server_admin"=>"admin@xyz.com" }
]

websites.each do |site|
  template "/etc/apache2/sites-available/#{site['server_name']}.conf" do
    source 'vhost.erb'
    owner 'root'
    group 'root'
    mode '0744'
    variables(
    'server_name' => site['server_name'],
    'server_admin' => site['server_admin'],
    'document_root' => "#{node.apache.document_root}/#{site['server_name']}"
    )
  end
end
