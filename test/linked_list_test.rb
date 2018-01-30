
require "./lib/linked_list"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_starts_with_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_a_thing
    list = LinkedList.new
    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("West")

    assert_nil list.head.next_node
  end

  def test_list_count
    list = LinkedList.new
    list.append("West")

    assert_equal 1, list.count
  end

  def test_the_string_is_west_family
    list = LinkedList.new
    list.append("West")

    assert_equal "The West family", list.to_string
  end

end
