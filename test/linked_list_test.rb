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
    link = LinkedList.new

    assert_nil link.head
  end

  def test_append
    link = LinkedList.new
  end

end
