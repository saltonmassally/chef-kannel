package "libssl0.9.8" do
  action :install
end

service "kannel" do
  supports :status => true, :start => true, :stop => true, :restart => true
end

cookbook_file "#{Chef::Config[:file_cache_path]}/kannel_1.5.0-0_#{node['kernel']['machine']}.deb" do
    source "kannel_1.5.0-0_#{node['kernel']['machine']}.deb"
    action :create_if_missing
end

dpkg_package  "kannel" do
    source  "#{Chef::Config[:file_cache_path]}/kannel_1.5.0-0_#{node['kernel']['machine']}.deb"
    action :install
end

execute "ldconfig" do
  user "root"
end

group "kannel" do
   members "kannel"
   action :create
end

directory "#{node[:kannel][:config_folder_path]}/smsc" do
  owner "kannel"
  group "kannel"
  mode 0775
  recursive true
end

template "#{node[:kannel][:config_folder_path]}/smsc/africell.conf" do
  source "smsc-africell.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
end

template "#{node[:kannel][:config_folder_path]}/smsc/fake.conf" do
  source "smsc-fake.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
end

directory "#{node[:kannel][:config_folder_path]}/services" do
  owner "kannel"
  group "kannel"
  mode 0775
  recursive true
end

template "#{node[:kannel][:config_folder_path]}/services/ping.conf" do
  source "service-ping.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
end

template "#{node[:kannel][:config_folder_path]}/services/main.conf" do
  source "service-main.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
end

directory "#{node[:kannel][:config_folder_path]}/users" do
  owner "kannel"
  group "kannel"
  mode 0775
  recursive true
end

template "#{node[:kannel][:config_folder_path]}/users/default.conf" do
  source "user-default.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
end

template "/etc/default/kannel" do
  source "kannel.default.erb"
  mode 0755
  owner "kannel"
  group "kannel"
  notifies :restart, "service[kannel]"
end

template "/etc/kannel/kannel.conf" do
  source "kannel.conf.erb"
  mode 0755
  owner "kannel"
  group "kannel"
  notifies :restart, "service[kannel]"
end

service "kannel" do
  action [:enable, :start]
end
