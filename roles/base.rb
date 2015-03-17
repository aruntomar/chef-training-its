name "base"
description "base role for the nodes."
run_list(
  "recipe[yum-epel]",
  "recipe[fail2ban]",
  "recipe[chef-client]",
  "recipe[git]"
)
default_attributes()
override_attributes()
