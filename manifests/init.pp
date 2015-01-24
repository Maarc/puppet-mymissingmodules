# Public: Install CleanMyMac2 to /Applications.
#
# include cleanmymac
#
class cleanmymac(){
  package { 'CleanMyMac2':
    source => "http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg",
    provider => 'appdmg'
  }
}