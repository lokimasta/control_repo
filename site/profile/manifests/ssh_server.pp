class profile::ssh_server{
	package{'openssh-server':
		ensure => present,

	}
	service{'sshd':
		ensure => 'running',
		enable => 'true',	
	}
	ssh_authorized_key{'root@master.puppet.vm':
		ensure => present,
		user => 'root',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCdqYnvP5nkQNnsi8OQiR+i3hX4wDLWIbq6TDUuqBd2mFwkPREw3ZXuKk2s7SSoyVI856dNOpmPwQA4PzF3mJL/Wvq4C/SgNGQEWAzvxO7jjZVsJEZwHiL8hD2W8y9/1n+i/ErjTiJyEonD3gme7DGIYP+9frwrYD3W73sykJsPWc3ABzY5RDd2lhuK2euGMEWRL6SjEDL1o+T+nvKcHOm38SgXZw5r6cTa8gyiOH7CI+QlzO0ZJ4vm+bvtbZUQeIeOenNW9CPMBUOhOgoOJUMMDuGEq+M9VLQmnWDipOcGfBQ87MXEDJGaE1ll3TiRuBJhsOZrNUQJuzg5FIoXjw0F',
	}
}
