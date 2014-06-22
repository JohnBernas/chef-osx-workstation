paths = node["sprout"]["git"]["projects"].collect{|p| p[2]}.select{|p| p}
extra_paths = node["project_directories"] || []
paths += extra_paths if extra_paths

paths.uniq.each do |path|
  directory "#{node['sprout']['home']}/#{path}" do
    owner node['current_user']
    mode "0755"
    action :create
    recursive true
  end
end
