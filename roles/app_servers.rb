name "app_servers"
description "This role contains nodes, which act as web server"
run_list "recipe[nginx]"
default_attributes 'nginx' => 
}
