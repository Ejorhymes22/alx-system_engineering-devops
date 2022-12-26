# configures config file
file { '/etc/ssh/ssh_config':
content => '#ssh client configuration
Match all
PasswordAuthentication no
IdentityFile ~/.ssh/school',
}
