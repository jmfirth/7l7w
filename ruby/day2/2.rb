#!/usr/bin/env ruby

class Tree
	attr_accessor :definition, :children, :node_name

	def initialize(definition={})
		@definition = definition
		@node_name = @definition.keys[0]
		@children = []
		@definition[@node_name].each {|node| @children.push(Tree.new(Hash[[node]]))} if @definition[@node_name] != nil
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end

	def print
		self.visit_all {|node| puts node.node_name}
	end
end

ruby_tree = Tree.new({
	'grandpa' => { 
		'dad' => {
			'child 1' => {}, 
			'child 2' => {} 
		}, 
		'uncle' => {
			'child 3' => {},
			'child 4' => {} 
		} 
	}	
});

print "Object Dump:\n"
p ruby_tree
print "\n\nNode Names:\n"
ruby_tree.print
