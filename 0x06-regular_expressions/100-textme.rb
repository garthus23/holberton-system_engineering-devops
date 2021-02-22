#!/usr/bin/env ruby
toto = ARGV[0].scan(/(?<=from:)(.*?)(?=\])|(?<=to:)(.*?)(?=\])|(?<=flags:)(.*?)(?=\])/).join(",")
puts toto.gsub(Regexp.union(",,,,"), ", ")
