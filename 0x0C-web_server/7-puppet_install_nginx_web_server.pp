# this install nginx using pupet
package { 'apt-get update':
}
package { 'nginx':
ensure 		=> present,
provider 	=> apt,
install_options => ['-y']
}

file { '/var/www/html/index.html':
content => 'Hello World!'
}

exec { "sed -i '50 i rewrite ^/redirect_me/$ 301 permanent;' /etc/nginx/sites-available/default'":
}
