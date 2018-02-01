require "pry"

class Node

  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def surname
    @surname
  end

  def next_node
    @next_node
  end

  def next_node=(next_node)
    @next_node= next_node
  end

end
