require "./lib/node"
class LinkedList

  def initialize
    @head = nil
    @count = 0 
  end

  def head
    @head
  end

  def append(surname)
    new_node = Node.new(surname)
    @head = new_node
    @count += 1
  end

  def count
    @count
  end

end
