# configures config file
file { 'ssh_config':
path    => '/etc/ssh/',
content => '#ssh client configuration
Match all
PasswordAuthentication no
IdentityFile ~/.ssh/school',
}
