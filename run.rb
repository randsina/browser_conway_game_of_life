#!/usr/bin/env ruby
require 'pry'
Dir[File.expand_path("lib/*.rb")].each { |f| require f }

include BrowserConwayGameOfLife

# binding.pry
universe = Universe.new(20, 10)
puts universe
loop do
  universe.next
  p '*' * 40
  puts universe
  sleep 0.3
end
