# This will "insert" the contents of the person.rb here
require_relative '../lib/person.rb'
require_relative '../lib/insured_person.rb'

# Create two person objects, aka, two instances of the Person class.
tom = Person.new('tom', 'dyer', '5-13-1950') # 65
jill = Person.new('jill', 'stein', '1-13-1993') # 23

puts "tom is #{tom.full_name}"
puts "jill is #{jill.full_name}"

puts "tom is #{tom.age}"
puts "jill is #{jill.age}"

if jill.give_insurance?
  puts "Give #{jill.full_name} insurance"
else
  puts "Don't give #{jill.full_name} insurance"
end

if tom.give_insurance?
  puts "Give #{tom.full_name} insurance"
else
  puts "Don't give #{tom.full_name} insurance"
end

puts "there are #{Person.num_people} people"

jake = InsuredPerson.new('Jake', 'Vaughn', '11-03-1987')
jake.account_id = 8901
puts jake.display
