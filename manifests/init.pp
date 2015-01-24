# include mymissingmodules::cleanmymac
class mymissingmodules::cleanmymac {
    package { 'CleanMyMac2':
      source => "http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg",
      provider => 'appdmg'
    }
}


class mymissingmodules::handsoff {
    $version = '2.3.3'
    package { 'HandsOff':
      source => "https://www.oneperiodic.com/files/Hands%20Off!%20v${version}.dmg",
      provider => 'appdmg'
    }
}

class mymissingmodules::pathfinder {
    package { 'Path Finder':
      source => "http://get.cocoatech.com/PF7.zip",
      provider => 'compressed_app'
    }
}


class mymissingmodules::purevpn {
    package { 'PureVPN':
      source => "http://www.purevpn.com/software-for-mac.php?reload=1&new=1",
      provider => 'appdmg'
    }
}



# Does not work currently as "Install Adobe Flash Player.app" is not able to execute and finish the setup
## include mymissingmodules::flashplayer
#class mymissingmodules::flashplayer {
#    $install_file = '/Applications/Install\ Adobe\ Flash\ Player.app'
#    package { 'AdobeFlashPlayerInstaller':
#      source => "http://aihdownload.adobe.com/bin/live/AdobeFlashPlayerInstaller_16_ltrosxd_aaa_aih.dmg",
#      provider => 'appdmg'
#    }
#    ~> exec { 'Install Flash Player':
#       command => "/usr/bin/open ${install_file}",
#       logoutput => 'on_failure',
#       refreshonly => true,
#    }
#    -> file { $install_file:
#       ensure => 'absent',
#  }
#}
