require "./lib/node"
class LinkedList

  def initialize
    @head = nil
  end

  def head
    @head
  end

  def append(surname)
    new_node = Node.new(surname)
    @head = new_node
  end

end
