# hashes

# each index has a key and a value

h = {"key" => "value"}

puts h["key"]


h.each_pair {|k,v| puts "#{k} is #{v}"}
