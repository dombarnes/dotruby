#!/usr/bin/ruby
# Author: Dom Barnes
# Web: dombarnes.com
# This script will iterate through your projectDir finding all instances of .ruby-version and writing them to ruby apps.txt
# I wrote this so I know which projects need ot be updated when a new version of ruby is released.

# case ARGV[0]
# homeDir = File.expand_path(ENV['HOME'])
# require 'optparse'

# options = {}
# OptionParser.new do |opts|
# 	opts.banner = "Usage dotruby.rb [options]"

# 	opts.on("-p", "--path", "Set your projects path") do |p|
# 		options[:path] = v
# 	end
# end.parse!
puts "path is " + ARVG[0]
if ARGV[0]?
	searchDir = File.expand_path(ARGV[0])
else
	searchDir = File.expand_path(ENV['HOME'])
end

puts searchDir

puts "Checking #{searchDir}"
# rubyList = File.new(searchDir + "/ruby-apps.txt", "w")

Dir.foreach(searchDir) do |item|
	if File.directory?(item)
		next if item == '.' or item == '..' or item == '.DS_Store'
		if File.file?(searchDir + '/' + item + '/.ruby-version')
			data = File.read(searchDir + '/' + item + '/.ruby-version')
			puts item + " =>" + data
			# rubyList.write("/" + item + "\t" + data)
		else
			next
		end
	else
		next
	end
end
rubyList.close