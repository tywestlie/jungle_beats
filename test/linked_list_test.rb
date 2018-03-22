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

    list.append("derp")
    assert_equal "derp", list.to_string
  end

  def test_to_string_multiple
    list = LinkedList.new

    list.append("derp")
    list.append("farp")
    list.append("slarp")
    assert_equal "derp farp slarp", list.to_string
  end

  def test_count
    list = LinkedList.new

    list.append("derp")

    assert_equal 0, list.count
  end

  def test_count2
    list = LinkedList.new

    list.append("derp")
    list.append("perp")
    list.append("garp")
    list.append("farp")

    assert_equal 3, list.count
  end

  def test_prepend
    list = LinkedList.new

    list.append("darp")
    list.prepend("snarp")
    list.append("foop")
    assert_equal "snarp darp foop", list.to_string
  end

  def test_insert
    list = LinkedList.new

    list.append("darp")
    list.prepend("snarp")
    list.append("foop")
    list.append("doop")

    list.insert(3,"glimblop")

    assert_equal "snarp darp glimblop foop doop", list.to_string
  end


end
