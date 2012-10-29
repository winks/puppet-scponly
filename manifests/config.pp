class scponly::config {
    file { $scponly::params::base_dir:
        ensure  => directory,
        require => Class["scponly::install"],
    }
}
