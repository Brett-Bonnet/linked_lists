class LinkedList
  attr_accessor :head, :tail
  
  def initialize()
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    if @head == nil
      prepend(value)
    else node = @head
      while node.next_node != nil do
        node = node.next_node
      end
        node.next_node = Node.new
        node.next_node.value = value
        @tail = node.next_node
    end
    @size += 1
  end
  
  def prepend(value)
      @head = Node.new
      @head.value = value
      @size += 1
  end
  
  def size
    @size
  end
  
  def head
    @head
  end
  
  def tail
    @tail
  end
  
  def at(index)
    node = @head
    i = 0
    while node != nil do
      return node if i == index
      node = node.next_node
      i += 1
    end

  end
  
  def pop
    @tail = nil
  end
  
  def contains?(text)
    node = @head
    contains = false
    while node != nil do
      if node.value == text
        contains = true
        break
      else node = node.next_node
        false
      end
    end
    contains
  end
  
  def find(data)
    node = @head
    index = 0
    while node != nil do
      return index if data == node.value
      node = node.next_node
      index += 1
      nil
    end
  end
  
  def to_s
    node = @head
    while node != nil do
      print "(#{node.value})" + " -> "
      node = node.next_node
    end
    if node.nil?
      print "nil"
    end
  end

  def insert_at(index, value)
    inserted = Node.new
    inserted.value = value
    current = @head
    i = 0
    while i != index do
        previous = current
        current = current.next_node
        i += 1
    end
    previous.next_node = inserted
    inserted.next_node = current

  end

  def remove_at(index) 
  end

end
