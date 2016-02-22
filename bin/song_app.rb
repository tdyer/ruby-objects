# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

song1 = Song.new("A song", 213, 1.99, 'Beck')
song2 = Song.new("Lithium", 183, 1.49, "Nirvana")
song3 = Song.new("Aqualung", 310, 0.49, "Jethro Tull")

puts song1.display
puts song2.display
puts song3.display

songs_avg_duration = (song1.duration + song2.duration + song3.duration) / 3

puts "the average duration of songs is #{songs_avg_duration}"

songs_avg_price = (song1.price + song2.price + song3.price) / 3

puts "the average price of songs is #{songs_avg_price.round(2)}"

song3.price = 3.99
puts song3.display
