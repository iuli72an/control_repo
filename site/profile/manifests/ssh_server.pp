class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDISPRxx1bY1BWaZlOTe09mpILHSTi/JNsza0MoYhpL/7fRdWKn1y9Cr5090jFKqcTHZPQn+7saVhzlk9NYNgNj72e+t9pEJTfq6IQgS6BJtliobgBOACcBVRdUOYtw05v2ip35lYgM6/Z1yL0z5v9VICc/wM/eIWo/iAUWwYms5Dor9wDVeW5KUa0kXXuBoGh2KaCjowo6h4RlknmxG+Tho0eeP0UHGT0V6kOY3opsozIlUA/kPdSmXMLuQv0EIgYHS4Azj2L8j28f5mhZRdSWUWcyJI+ujXSwBWVk4qhf4susa9N0b+cDnXkgQhPk7Pw9rioUOMfnduz3C0jd+Lc/ root@master.puppet.vm',
	}  
}
