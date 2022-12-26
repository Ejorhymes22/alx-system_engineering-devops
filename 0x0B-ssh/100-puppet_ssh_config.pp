# configures config file
file { '/.ssh/config':
content => '#ssh client configuration
Match all
PasswordAuthentication no
IdentityFile ~/.ssh/school',
}
