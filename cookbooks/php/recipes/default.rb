#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
default = %w{php5 php-pear php5-cli php5-common php5-dev php5-gd php5-mysql libapache2-mod-php5 php-apc}
laravel = %w{php5-mcrypt}

packages = default + laravel
packages.each do |suffix|
    package suffix do
        action :install
    end
end
