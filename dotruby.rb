#!/usr/bin/ruby
# Author: Dom Barnes
# Web: dombarnes.com
# This script will iterate through your projectDir finding all instances of .ruby-version and writing them to ruby apps.txt
# I wrote this so I know which projects need ot be updated when a new version of ruby is released.

searchDir = Dir.pwd
puts "Checking #{searchDir}"

Dir.foreach (searchDir) do |item|
	if File.directory?(item)
		next if item == '.' or item == '..' or item == '.DS_Store'
		if File.file?(searchDir + '/' + item + '/.ruby-version')
			data = File.read(searchDir + '/' + item + '/.ruby-version')
			puts item + " =>" + data
		else
			next
		end
	else
		next
	end
end
