# this install nginx using puppet

exec { 'apt-get update':
  path => ['/bin', '/usr/bin'],
}

package { 'nginx':
  provider        => apt,
  install_options => ['-y'],
}

#package { 'nginx':
#ensure => 'installed'
#}

file { '/var/www/html/index.html':
content => 'Hello World!'
}

#exec { "sed -i '50 i rewrite ^/redirect_me/$ 301 permanent;' /etc/nginx/sites-available/default'":
#}
