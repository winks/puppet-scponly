class scponly::params {
    case $::operatingsystem {
        'ubuntu', 'debian': {
            $base_dir = '/home/_scponly'
            $package_name = 'scponly'
        }
    }
}
