vagrant-laravel-starterkit
==========================

# Laravel 4 w/ Vagrant

A basic Ubuntu 12.04 Vagrant setup with [Laravel4](http://laravel.com/docs) and PHP 5.4.
[Chef-solo](http://docs.opscode.com/) is used as a provisioning tool.

## Requirements

* VirtualBox - Free virtualization software [Downloads](https://www.virtualbox.org/wiki/Downloads)
* Vagrant - Tool for working with virtualbox images [Vagrant Home](https://www.vagrantup.com), click on 'download now link'
* Git - Source Control Management [Downloads](http://git-scm.com/downloads)

## Setup

* Clone this repository `git clone --recursive git@github.com:gologo13/vagrant-laravel-starterkit.git`
* run `vagrant up` inside the newly created directory
* (the first time you run vagrant it will need to fetch the virtual box image which is ~300mb so depending on your download speed this could take some time)
* Vagrant will then use chef to provision the base virtual box with our LAMP stack (this could take a few minutes)
* You can verify that everything was successful by opening [here](http://192.168.33.10/sandbox/public) in a browser

*Note: You may have to change permissions on the www/app/storage folder to 777 under the host OS* 

For example: `chmod -R 777 www/app/storage/`

## Usage

Some basic information on interacting with the vagrant box

### Ports

* 80   - Apache
* 3306 - MySQL

### Default MySQL Database

* User: root
* Password: (blank)
* DB Name: sandbox

You can customize settings by editing [mysql.rb](./cookbooks/database/recipes/mysql.rb) file.
The detail is written in [this document](https://github.com/opscode-cookbooks/database).

## License

MIT License. Please see the LICENSE file for details.
