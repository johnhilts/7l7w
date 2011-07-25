# puts %{"I am cool" ~ Someone I don't know. #{1 + 1}}

class String
	def String.something
		
	end
	
	def something
		
	end
	
	def self.try_convert(str)
		str.upcase
	end
	
end

puts "this is a string".reverse.upcase
puts "HELLOOOOO".downcase

puts "hello" + " " + "world"

puts "1 +" + " #{1 + 1} " + "= 3"

s = "test"
puts String.try_convert("test") # note use of extension method
