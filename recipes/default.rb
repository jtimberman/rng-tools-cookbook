#
# Cookbook Name:: rng-tools
# Recipe:: default
#
# Copyright 2011, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package "rng-tools"

case node['platform_family']
when "fedora", "rhel"
  template "/etc/sysconfig/rngd" do
    source "rngd.sysconfig.erb"
    mode 0644
    owner "root"
    group "root"
    notifies :restart, "service[rng-tools]", :immediately
  end
else
  template "/etc/default/rng-tools" do
    source "rng-tools.default.erb"
    mode 0644
    owner "root"
    group "root"
    notifies :restart, "service[rng-tools]", :immediately
  end
end

service "rng-tools" do
  case node['platform_family']
  when "rhel", "fedora"
    service_name "rngd"
    supports :status => :true, :restart => :true, :reload => :true
  else
    supports :restart => true
  end
  action [:enable, :start]
end
