require 'enumerator'

ary = []
16.times do
	r = rand(89) + 10
	ary.push(r)
end

s = ""
ary.each {|x| s += x.to_s + ", "}
puts s.slice(0, s.length - 2)
puts

# print array contents 4 at a time using just each
i = 0
ary.each do |x| 
	if i % 4 == 0 
		p ary.slice(i, 4)
		puts " "
	end
	i += 1
end

puts 
# print array contents 4 at a time with each_slice
ary.each_slice(4) {|a| p a}
