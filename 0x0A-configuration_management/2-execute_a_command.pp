#this terminates a process
exec { 'killmenow':
command => 'pkill killmenow'
}
