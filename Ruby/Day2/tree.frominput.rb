require 'tree'

def GetTreeNode(h)
	a = []
	h.keys.each do |key| 
		if h[key].size == 0
			#puts 'leaf for ' + key
			a.push(Tree.new(key))
		else
			#puts 'branch for ' + key
			c = GetTreeNode(h[key])
			#p "child array"
			#p c
			a.push(Tree.new(key, c))
		end
	end
	return a
end

puts 'enter a tree'
puts "for example: h = {'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }"
input_hash = gets

# ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])
h = eval(input_hash)
a = []
h.keys.each {|key| a.push(Tree.new(key, GetTreeNode(h[key])))}
#a = []
#a.push(Tree.new(h.keys[0], GetTreeNode(h[h.keys[0]])))
#p a
# a = [Tree.new("Ruby"), [Tree.new("Reia"), Tree.new("MacRuby")]]
#p "array:"
#p a
# a.each {|x| p x}

puts "Visiting a node (input)"
a.each{|i| i.visit {|node| puts node.node_name}}
puts

puts "visiting entire tree (input)"
a.each{|i| i.visit_all {|node| puts node.node_name}}

# h = {'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } }, 'grandma' => {'other uncle' => {'other cousin' => {} } } }