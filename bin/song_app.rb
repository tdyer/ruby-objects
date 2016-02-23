# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

song1 = Song.new('Golden Age', 'Beck', 183, 1.99)
song2 = Song.new('Let It Be', 'Beatles', 203, 1.49)
song3 = Song.new("Lithium", 'Nirvana', 156, 0.99)


puts "song1 is #{song1.title}"
puts "song2 is #{song2.title}"
puts "song3 is #{song3.title}"


avg_price = (song1.price + song2.price + song3.price)/3
puts "average price is #{avg_price}"

avg_duration = (song1.duration + song2.duration + song3.duration)/3
puts "average duration is #{avg_duration}"

# song2.price += 1.00
song2.price = song2.price + 1.00

puts "song2's price is #{song2.price}"
