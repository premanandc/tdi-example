#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
	action :create
	comment "Test-Driven Infrastructure"
	gid "users"
	home "/home/tdi"
	shell "/bin/bash"
	password "$1$.T4WN2QI$x73iBxmXCEpDbHJEP21XX/"
	supports :manage_home => true 
end

package "irssi" do
	action :install
end

directory "/home/tdi/.irssi" do
	owner "tdi"
	group "users"
	action :create
end

cookbook_file "/home/tdi/.irssi/config" do
	source "irssi-config"
	owner "tdi"
	group "users"
end
