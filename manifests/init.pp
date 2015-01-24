# Public: Install CleanMyMac2 to /Applications.

class mymissingmodules::cleanmymac {
    package { 'CleanMyMac2':
      source => "http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg",
      provider => 'appdmg'
    }
}

class mymissingmodules::flashplayer {
    package { 'AdobeFlashPlayerInstaller':
      source => "http://aihdownload.adobe.com/bin/live/AdobeFlashPlayerInstaller_16_ltrosxd_aaa_aih.dmg",
      provider => 'appdmg'
    }
}


