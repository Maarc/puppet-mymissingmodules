# include mymissingmodules::cleanmymac
class mymissingmodules::cleanmymac {
    package { 'CleanMyMac2':
      source => "http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg",
      #source => "http://mhdownloads.s3.amazonaws.com/nano3/CleanMyMac2.dmg",
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

class mymissingmodules::jd {
    $version = '0.3.5'
    package { 'JD-GUI':
      source => "http://jd.benow.ca/jd-gui/downloads/jd-gui-${version}.osx.i686.dmg",
      provider => 'appdmg'
    }
}

class mymissingmodules::wireshark {
    $version = '1.12.3'
    package { 'WireShark':
      source => "https://1.eu.dl.wireshark.org/osx/Wireshark%20${version}%20Intel%2064.dmg",
      provider => 'appdmg'
    }
}



# Not working
#class mymissingmodules::purevpn {
#    package { 'PureVPN':
#      source => "http://www.purevpn.com/software-for-mac.php?reload=1&new=1",
#      provider => 'appdmg'
#    }
#}

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
