# this install nginx using pupet

include nginx


file { '/var/www/html/index.html':
content => 'Hello World!'
}

exec { "sed -i '50 i rewrite ^/redirect_me/$ 301 permanent;' /etc/nginx/sites-available/default'":
}
