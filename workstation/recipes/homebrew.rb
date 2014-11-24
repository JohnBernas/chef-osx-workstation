include_recipe 'homebrew'

directory '/usr/local/Library/Taps' do
  owner node['current_user']
  recursive true
end

execute 'tap tap tap' do
  # Required at least for sublime-text3
  command 'brew tap "caskroom/versions"'

  # Required for jenv
  command 'brew tap "jenv/jenv"'

  user node['current_user']
end
