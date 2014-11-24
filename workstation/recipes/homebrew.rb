include_recipe 'homebrew'

directory '/usr/local/Library/Taps' do
  owner node['current_user']
  recursive true
end

# Required at least for sublime-text3
execute 'tap cask' do
  command 'brew tap "caskroom/versions"'
  user node['current_user']
end
