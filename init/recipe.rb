execute "apt-get update and upgrade" do
  command "apt-get update && apt-get upgrade -y"
end

package "docker.io" do
  action :install
end

execute "install logrotate" do
  command "sudo aptitude install logrotate"
end
