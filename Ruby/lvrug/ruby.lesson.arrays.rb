# arrays

mixed_array = [0,1,2,3,4,"hello"]
puts mixed_array

puts mixed_array.class

puts mixed_array.length

puts mixed_array.first

puts mixed_array.last

puts mixed_array[5]

puts mixed_array.reverse

puts mixed_array.reverse.last

puts mixed_array.reverse.class

puts mixed_array.reverse[4]

puts mixed_array.reverse[4].class

puts mixed_array.reverse[4] + 4

puts Array.ancestors

# arrays are collections and can be enumerated

a = [3, 6, 1, 8, 5]
a.each {|number| puts number + 1}
