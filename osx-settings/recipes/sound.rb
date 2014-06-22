osx_defaults "disable sound" do
  domain 'com.apple.systemsound'
  key 'com.apple.sound.uiaudio.enabled'
  integer 0
end