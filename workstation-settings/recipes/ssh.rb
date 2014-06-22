directory "#{node['sprout']['home']}/.ssh" do
  action :create
  owner node['current_user']
  group 'staff'
  mode '0700'
end

file "#{node['sprout']['home']}/.ssh/known_hosts" do
  action :create_if_missing
  owner node['current_user']
  group 'staff'
  mode '0644'
end

template "#{node['sprout']['home']}/.ssh/config" do
  source "config.ssh.erb"
  user node['current_user']
end

execute "Copy SSH keys" do
  command "rsync --chmod=Du=rwx,Dg=,Do=,Fu=rw,Fg=,Fo= -a #{node['ssh_keys_location']}/ #{node['sprout']['home']}/.ssh"
  only_if { node.has_key?("ssh_keys_location") }
end
