template "#{node['sprout']['home']}/.gitconfig" do
  source "config.git.erb"
end

template "#{node['sprout']['home']}/.gitignore" do
  source "gitignore.erb"
end
