#!/usr/bin/env ruby
# Author: Dom Barnes
# Web: dombarnes.com
# This script will iterate through your projectDir finding all instances of .ruby-version and writing them to ruby apps.txt
# I wrote this so I know which projects need ot be updated when a new version of ruby is released.

homeDir = File.expand_path(ENV['HOME'])
# set your porject folder relative to ~/
projectDir = homeDir+ "/projects/"
rubyList = File.open(homeDir + "/projects/ruby\ apps.txt", "w")

	Dir.foreach(projectDir) do |item|
		if File.directory?(item)
			next if item == '.' or item == '..'
			if File.file?(projectDir + item + '/.ruby-version')
				data = File.read(projectDir + '/' + item + '/.ruby-version')
				puts data
				rubyList.write("/" + item + "\t" + data)
			else
				next
			end
		else
			next
		end
	end
# end
rubyList.close
