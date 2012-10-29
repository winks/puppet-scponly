class scponly::install {
  package { $scponly::params::package_name:
    ensure => present,
  }

  exec { 'create_script':
    command => 'gzip -d ./setup_chroot.sh.gz',
    cwd     => '/usr/share/doc/scponly/setup_chroot',
    path    => ["/usr/sbin", "/usr/bin", "/sbin", "/bin"],
    unless  => "ls /usr/share/doc/scponly/setup_chroot/setup_chroot.sh",
    require => Package[$scponly::params::package_name],
  }

  file { '/usr/share/doc/scponly/setup_chroot/setup_chroot.sh':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0744',
    require => Exec['create_script'],
  }
}
