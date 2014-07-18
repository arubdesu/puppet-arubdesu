class arubdesu::config (
    $my_homedir   = $::arubdesu::params::my_homedir,
    $my_sourcedir = $::arubdesu::params::my_sourcedir,
    $my_username  = $::arubdesu::params::my_username
    ){
    
    }
    # Safari: Add status bar
    mac_admin::osx_defaults { 'Add status bar to Safari':
        ensure => present,
        domain => 'com.apple.Safari',
        key    => 'ShowStatusBar',
        value  => 'true',
        type   => 'bool',
        user   => $my_username
    }
    # Safari: Include Debug Menu
    mac_admin::osx_defaults { 'Include Debug Menu in Safari':
        ensure => present,
        domain => 'com.apple.Safari',
        key    => 'IncludeDebugMenu',
        value  => 'true',
        type   => 'bool',
        user   => $my_username
    }
    # Dock: Position on right
    mac_admin::osx_defaults { 'Pin Dock to right side':
        ensure => present,
        domain => 'com.apple.Dock',
        key    => 'orientation',
        value  => 'right',
    }
}