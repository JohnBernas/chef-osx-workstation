prefs = node['osx']['dock']

osx_defaults "set dock autohide to #{prefs['autohide']}" do
  domain 'com.apple.dock'
  key 'autohide'
  boolean prefs['autohide']
  only_if { prefs.keys.include?('autohide') }
end

osx_defaults "set dock to be on #{prefs['orientation']}" do
  domain 'com.apple.dock'
  key 'orientation'
  string prefs['orientation']
  only_if { prefs['orientation'] }
end

osx_defaults 'remove persistent apps from the dock' do
  domain 'com.apple.dock'
  key 'persistent-apps'
  array []
  only_if { prefs['clear'] }
end

osx_defaults "adjusts dock size to #{prefs['tilesize']}" do
  domain 'com.apple.dock'
  key 'tilesize'
  integer prefs['tilesize']
  only_if { prefs['tilesize'] }
end

osx_defaults 'toggle dock magnification on/off' do
  domain 'com.apple.dock'
  key 'magnification'
  boolean prefs['magnification']
  not_if { prefs['magnification'].nil? }
end

execute 'relaunch dock' do
  command 'killall Dock'
  only_if { !prefs.empty? }
end