require './linked_list.rb'
require './node.rb'


list = LinkedList.new
new_node = list.append("Hey")
next_node = list.append("number 2")
list.to_s
