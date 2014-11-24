%w{functions plugins}.each do |dir|
  directory "#{node['sprout']['home']}/.config/fish/#{dir}" do
    recursive true
    user node['current_user']
  end
end

template "#{node['sprout']['home']}/.config/fish/config.fish" do
  source "config.fish.erb"
  user node['current_user']
end

%w{fish_prompt}.each do |fish_function|
  template "#{node['sprout']['home']}/.config/fish/functions/#{fish_function}.fish" do
    source "fish/functions/#{fish_function}.fish.erb"
    user node['current_user']
  end
end

# JENV Functions
%w{jenv export}.each do |fish_function|
  template "#{node['sprout']['home']}/.config/fish/functions/#{fish_function}.fish" do
    source "/usr/local/opt/jenv/libexec/fish/#{fish_function}.fish"
    local true
    user node['current_user']
  end
end

%w{git ruby bundler foreman heroku dev custom}.each do |fish_config|
  template "#{node['sprout']['home']}/.config/fish/plugins/#{fish_config}.fish" do
    source "fish/plugins/#{fish_config}.fish.erb"
    user node['current_user']
  end
end
