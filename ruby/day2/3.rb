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
File.open(filename, "r") do |file|
	lineNumber = 1
	while (line = file.gets)
		matchIndex = line.index(match)
		begin
			print "Line #{lineNumber.to_s}: #{line}"
			print " " * (7 + lineNumber.to_s.length + matchIndex) + "^\n"
		end if matchIndex != nil
		lineNumber += 1
	end
end
