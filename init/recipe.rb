execute "apt-get update and upgrade" do
  command "apt-get update && apt-get upgrade -y"
end

package "docker.io" do
  action :install
end

package logrotate do
  action :install
end
