define scponly::user(
  $homedir_prefix = '/home',
  $writable_dir   = 'incoming'
) {
  include scponly

  exec { "bash ./setup_chroot.sh ${homedir_prefix}/${name} ${name} ${writable_dir} > /tmp/foo":
    cwd    => '/usr/share/doc/scponly/setup_chroot',
    path   => ["/usr/sbin", "/usr/bin", "/sbin", "/bin"],
    unless => "ls ${homedir_prefix}/${name}",
  }
}
