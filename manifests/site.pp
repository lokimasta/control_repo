/* node default {
  #file{'/root/README':
   # ensure => file,
    #content => 'This is my README file',
  #}
}
*/

node default{
}
node 'master.puppet.vm'{
  include role::master_server
}

node /^web/ {
  include role::app_server
}


node /^db/ {
  include role::db_server
}
