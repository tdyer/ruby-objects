# This will "insert" the contents of the person.rb here
require_relative '../lib/person.rb'

# Create two objects, aka instances of Person.
tom = Person.new("Tom", "Dyer")
jill = Person.new "Jill", "Stein"

puts "Jill is #{jill.inspect}"

puts "Jill's full name is #{jill.full_name}"

puts "Jill's first name is #{jill.first_name}"

puts "Tom's name is #{tom.full_name}"
tom.first_name = "Thomas"  # calls the setter method in the Person class
puts "Tom's name is #{tom.full_name}"

# ????
tom.last_name = "Jones"
puts "Tom's name is #{tom.full_name}"

