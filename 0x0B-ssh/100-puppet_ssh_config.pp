# configures config file
file { 'config':
ensure  => file,
path    => '/.ssh/',
content => 'match all\nPasswordAuthentication no\nIdentityFile ~/.ssh/school'
}
