# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aruntomar2001"
client_key               "#{current_dir}/aruntomar2001.pem"
validation_client_name   "solution-validator"
validation_key           "#{current_dir}/solution-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/solution"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
