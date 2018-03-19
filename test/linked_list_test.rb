require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require 'pry'

class TestLinkedList < Minitest::Test
  def test_exist
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end
end
