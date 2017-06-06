current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "admin"
client_key               "#{current_dir}/admin.pem"
validation_client_name   "gluky_org"
validation_key           "#{current_dir}/gluky_org.key"
chef_server_url          "https://chefserver/organizations/gluky_org"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor]="vim"
