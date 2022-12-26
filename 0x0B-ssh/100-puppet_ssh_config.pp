# configures config file
file { 'ssh_config':
path    => '/etc/ssh/',
content => '#ssh client configuration\nMatch all\nPasswordAuthentication no\nIdentityFile ~/.ssh/school',
}
