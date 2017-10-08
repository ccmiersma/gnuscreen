class gnuscreen::config{

  file { "${gnuscreen::user_home}/.screen" :
    ensure => directory,
  }
  
  file { "${gnuscreen::user_home}/.screen/default" :
    ensure => file,
    content => file("gnuscreen/screenrc"),
  }

  exec { 'Link screen config' :
     command => "ln -sT ${gnuscreen::user_home}/.screen/default .screenrc",
     path => ['/usr/bin'],
     cwd => "${gnuscreen::user_home}/",
     creates => "${gnuscreen::user_home}/.screenrc",
  }
}
