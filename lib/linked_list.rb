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
    if @head.nil?
      @head = Node.new(surname)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
    end
    @count += 1
  end

  def count
    @count
  end

  def to_string
    "The #{@head.surname} family"
  end
end
