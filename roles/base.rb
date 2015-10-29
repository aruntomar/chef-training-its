name "base"
description "base role for the nodes."
run_list(
  "recipe[yum-epel]",
  "recipe[fail2ban]",
  "recipe[chef-client]",
  "recipe[git]",
  "recipe[adminuser]",
  "recipe[push-jobs]"
)
default_attributes()
override_attributes(
  "push_jobs" => {
    "package_url" => "https://opscode-private-chef.s3.amazonaws.com/el/6/x86_64/opscode-push-jobs-client-1.1.5-1.el6.x86_64.rpm",
    "package_checksum" => "08d1e8058e2ca1290f71f9c2ba6684cecfc2099d"
  }
)
