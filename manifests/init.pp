# Public: Install CleanMyMac2 to /Applications.
#
# include cleanmymac
#
class cleanmymac (
  $version = '2',
  ) {
    package { 'CleanMyMac${version}':
      source => "http://dl.devmate.com/com.macpaw.CleanMyMac${version}/CleanMyMac${version}.dmg",
      provider => 'appdmg'
    }
}
