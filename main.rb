require './linked_list.rb'
require './node.rb'


list = LinkedList.new
first = list.append("number 1")
second = list.append("number 2")
third = list.append("number 3"
list.to_s
list.prepend("new number 1")
puts list.size
puts list.head.value
puts list.tail.value
puts list.at(2).value
list.pop
list.to_s
list.contains?("number 2")
list.find("number 3")
list.insert_at(2, "NEW number 3")
list.to_s
list.remove_at(2)
