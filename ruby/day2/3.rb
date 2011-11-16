#!/usr/bin/env ruby

=begin
A simple grep utility

Usage:  ./3.rb <match> <filename>
   Ex:  ./3.rb ruby 2.rb
=end

# scrape command line arguments
match = ARGV[0]
filename = ARGV[1]

# pass file to block
lineNumber = 1
File.open(filename, "r") do |file|
	while (line = file.gets)
		matchIndex = line.index(match)
		if matchIndex != nil
			# print the matching line
			print "Line " + lineNumber.to_s() + ": " + line
			
			# print match indication underneath
			(1..(7 + lineNumber.to_s().length + matchIndex)).to_a().each {|x| print " "}
			print "^\n"
		end
		lineNumber = lineNumber + 1
	end
end
