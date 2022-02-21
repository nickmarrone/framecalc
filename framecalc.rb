#!/usr/bin/env ruby

require 'fractional'
require 'io/console'

def read_fraction
  r = gets || ''
  Fractional.new(r.strip)
end

# Read inputs
puts "Calculate cuts needed for picture frame"
print 'Picture width: '
pic_width = read_fraction

print 'Picture height: '
pic_height = read_fraction

print 'Mat width: '
mat_width = read_fraction

# The bottom of the mat should be thicker
mat_base = mat_width * 1.25

print 'Frame width: '
frame_width = read_fraction

# Print outputs
puts "\nPicture is #{pic_width.to_s(mixed_number: true)} x #{pic_height.to_s(mixed_number: true)}"

frame_interior_w = pic_width + (mat_width * 2)
frame_interior_h = pic_height + mat_width + mat_base
puts "Frame interior is #{frame_interior_w.to_s(mixed_number: true)} x #{frame_interior_h.to_s(mixed_number: true)}"

frame_exterior_w = frame_interior_w + (frame_width * 2)
frame_exterior_h = frame_interior_h + (frame_width * 2)
puts "Frame exterior is #{frame_exterior_w.to_s(mixed_number: true)} x #{frame_exterior_h.to_s(mixed_number: true)}"

total_wood = (frame_exterior_w + frame_exterior_h) * 2
puts "Total wood length needed: #{total_wood.to_s(mixed_number: true)}"
