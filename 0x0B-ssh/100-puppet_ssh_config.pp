file { 'config':
	path => '/.ssh/',
	ensure => file,
	content => 'match all\nPasswordAuthentication no\nIdentityFile ~/.ssh/school'
}
