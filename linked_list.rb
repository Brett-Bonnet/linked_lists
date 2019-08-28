class LinkedList
  attr_accessor :head, :tail
  
  def initialize()
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new
    node.value = value
    if @head == nil
      @head = node
    else node.next_node = node
         @tail = node
    end
    @size += 1
  end
  
  def prepend(value)
    node = Node.new
    node.value = value
    @head = node
  end
  
  def size
    puts @size
  end
  
  def head
    puts @head
  end
  
  def tail
    @tail
  end
  
  def at(index)
  end
  
  def pop
  end
  
  def contains?
  end
  
  def find(data)
  end
  
  def to_s
    print "(#{@head.value}[HEAD]next=#{@head.next_node.value})" + " -> "
    i = 1
    while i <= @size do
     
     i += 1 
    end
    if !@tail.nil?
      puts "(#{@tail.value}[TAIL]next=#{@tail.next_node.value})" + " -> " + "nil"
    else print "nil"
    end
  end

  def insert_at(index)
  end

  def remove_at(index) 
  end

end
