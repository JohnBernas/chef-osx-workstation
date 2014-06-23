fn = node['osx']['function_keys'] || false

osx_defaults "Turn #{fn ? "on" : "off" } function-keys-work-as-function keys" do
  domain '.GlobalPreferences'
  key 'com.apple.keyboard.fnState'
  boolean fn
  only_if { node['osx'].keys.include?('function_keys') }
end
