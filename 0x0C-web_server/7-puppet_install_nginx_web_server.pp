# this install nginx using puppet

#exec { 'apt-get update':
 # path => ['/bin', '/usr/bin'],
#}

#package { 'nginx':
 # provider        => apt,
  #install_options => ['-y'],
#}

#package { 'nginx':
#ensure => 'installed'
#}

#file { '/var/www/html/index.html':
#content => 'Hello World!'
#}

#exec { "sed -i '50 i rewrite ^/redirect_me/$ 301 permanent;' /etc/nginx/sites-available/default'":
#}


exec { 'apt-get update':
  path => ['/bin', '/usr/bin'],
}

package { 'nginx':
  provider        => apt,
  install_options => ['-y'],
}

file { '/var/www/html/index.html':
  content => "Hello World!"
}

file { '/etc/nginx/sites-enabled/default':
  content =>"
server {
	listen 80 default_server;
	listen [::]:80 default_server;
    root /var/www/html;
	index index.html index.htm index.nginx-debian.html;
    server_name _;
    rewrite ^/redirect_me / permanent;
	location / {
		try_files \$uri \$uri/ =404;
	}
}"
}

exec { 'nginx':
  path    => ['/usr/sbin'],
}
