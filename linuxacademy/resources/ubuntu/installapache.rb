package 'apache' do
  package_name 'apache2'
end

service 'apache2' do
        action [:enable, :start]
end

file '/var/www/index.html' do
        action :delete
end

file '/var/www/html/index.html' do
        content 'Hello world'
        mode '0755'
        owner 'root'
        group 'www-data'
end

# En centos cambiaria los siguiente  package name seria 'httpd'
# y en grupo serÃa 'apache'

file '/etc/motd' do
       content 'Welcome to mi server'
end

#execute 'command_test' do      Revisar su funcionamiento cuando se tenga el kit chefdk
#   commmand 'echo blah >> /etc/motd'
#  not_if 'test -r /etc/motd'
#end

execute 'command-test' do
        command 'echo blah >> /etc/motd'
        only_if { ::File.exists?('/etc/motd')}
end




