# configures config file
file { '/etc/ssh/config':
content => '#ssh client configuration
Match all
PasswordAuthentication no
IdentityFile ~/.ssh/school',
}
