class gnuscreen::config{

  file { "${gnuscreen::user_home}/.screenrc" :
    ensure => file,
    content => file("gnuscreen/screenrc"),
  }
}
