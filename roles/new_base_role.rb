name  "new_base_role"
description  "New Base role"
run_list(
  'recipe[demo_cookbook]',
  'recipe[vim]',
  'recipe[solr]'
)
default_attributes()
override_attributes(
  "solr" => {
    "dir" => "/tmp/solr",
    "port" => "9000"
  }
)
