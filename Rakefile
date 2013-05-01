#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

require "net/ssh"
require "net/sftp"

Kerweb::Application.load_tasks

class SFTPHelper

  def initialize(remote_path)
    @remote = remote_path
  end

  def copy_recursive(file_or_dir, prefix_to_remove = nil, sftp)
    remote_file_or_dir = prefix_to_remove ? file_or_dir.gsub(prefix_to_remove, "") : file_or_dir
    remote_file_or_dir = @remote + remote_file_or_dir
    puts remote_file_or_dir
    if File.directory?(file_or_dir)
      puts "Creating directory #{remote_file_or_dir}"
      sftp.mkdir(remote_file_or_dir)
      Dir.glob(file_or_dir + "/*").each { |entry| copy_recursive(entry, prefix_to_remove, sftp) }
    else
      puts "Creating file #{remote_file_or_dir}"
      sftp.upload!(file_or_dir, remote_file_or_dir)
    end
  end
end



task :clear do
  puts "Connect to server"
  Net::SSH.start('168.63.105.134', 'deployer', :password => 'E1plHrOq') do |ssh|
    puts "Clear directory..."
    ssh.exec "rm -rf /home/sites/kerweb"
  end
end

task :deploy => :clear do
  Net::SFTP.start('168.63.105.134', 'deployer', :password => 'E1plHrOq') do |sftp|
    sftp.mkdir("kerweb")
    puts "Upload files..."
    helper = SFTPHelper.new("kerweb/")
    local = "."
    Dir.glob(local + "/*").each do |entry|
      helper.copy_recursive(entry, local + "/", sftp)
    end

  end
end