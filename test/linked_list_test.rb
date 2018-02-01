
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

  def test_append_works_on_each_new_node
    list = LinkedList.new
    list.append("West")

    assert_equal "The West family", list.to_string
  end

  def test_the_surname_is_passed_to_next_node
    list = LinkedList.new
    list.append("West")
    list.append("Hardy")

    assert_instance_of Node, list.head
    assert_equal "Hardy", list.head.next_node.surname
  end

  def test_that_the_count_updates_with_next_node
    list = LinkedList.new
    list.append("West")
    list.append("Hardy")

    assert_equal 2, list.count
  end

  def test_that_the_string_of_family_follows
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "The Rhodes family, followed by the Hardy family.", list.to_string
  end

end
