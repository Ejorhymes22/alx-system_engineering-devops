#this terminates a process
exec { 'killmenow':
command => 'pkill -9 killmenow'
}
