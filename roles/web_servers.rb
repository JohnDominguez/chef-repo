name "web_servers"
description "This roles contains nodes, which act as web_servers"
run_list "recipe[ntp]"
default_attributes 'ntp' => {
	'ntpdate' => {
		'disable' => true
	}
}