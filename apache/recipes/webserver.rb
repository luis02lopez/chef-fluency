#
# Cookbook:: apache
# Recipe:: webserver
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'apache2' do
    action :install
end

file '/var/www/html/index.html' do
    content 'Hello, world!'
end

service 'apache2' do
    action [:start, :enable]
end
