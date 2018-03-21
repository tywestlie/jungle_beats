require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class TestLinkedList < Minitest::Test

  def test_exist
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append
    list = LinkedList.new

    list.append("doop")

    assert_equal "doop", list.head.data
    assert_instance_of Node, list.head
  end

  def test_next_node_nil
    list = LinkedList.new

    list.append("plop")

    assert_nil list.head.next_node
  end

  def test_to_string
    list = LinkedList.new

    list.append ("derp")

    assert_equal "derp", list.to_string
  end

  def test_count
    list = LinkedList.new

    list.append ("derp")

    assert_equal 1, list.count
  end

end
