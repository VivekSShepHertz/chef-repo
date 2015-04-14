#
# Cookbook Name:: setupWebNode
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'tomcat6' do
	action :stop
end

config = data_bag_item("webConfig", "tomcat")

directory "#{node["tomcat"]["webapp_dir"]}/ROOT" do
	recursive true
	action :delete
end

remote_file "#{node["tomcat"]["webapp_dir"]}/#{config["warFile"]}" do
	source config["warURL"]
	mode '0777'
end

service 'tomcat6' do
	action :start
end
