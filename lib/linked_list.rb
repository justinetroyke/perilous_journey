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
    string = "The #{@head.surname} family"
    current_node = @head.next_node
    until current_node.nil?
      string += ", followed by the #{current_node.surname} family"

      current_node = current_node.next_node
    end
    string
  end

  def prepend(surname)
    @head = Node.new(surname)
  end

end
