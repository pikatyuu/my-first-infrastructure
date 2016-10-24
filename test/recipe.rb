execute "apt-get-update" do
  command "apt-get update -y"
end

execute "apt-get-upgrade" do
  command "apt-get upgrade -y"
end

package "htop" do
  action :install
end
