execute "apt-get update and upgrade" do
  command "apt-get update && apt-get upgrade -y"
end

package "docker.io" do
  action :install
end

execute "install logrotate" do
  command "aptitude install logrotate"
end

execute "remove all file on /etc/logrotate.d except apt file" do
  command "rm `ls /etc/logrotate.d -I apt`"
end

template "/etc/logrotate.d" do
  source "./docker"
  owner "root"
  group "root"
end

template "/etc/logrotate.d" do
  source "./rsyslog"
  owner "root"
  group "root"
end
