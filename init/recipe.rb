execute "apt-get update and upgrade" do
  command "apt-get update && apt-get upgrade -y"
end

package "docker.io" do
  action :install
end

execute "install logrotate" do
  command "aptitude install logrotate"
end

template "/etc/logrotate.d" do
  source "./docker"
  owner "root"
  group "root"
end
