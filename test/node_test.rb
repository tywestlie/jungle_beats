require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'
require 'pry'

class TestNode < Minitest::Test

  def test_exist
    node = Node.new

    assert_instance_of Node, node
  end

  def test_data
    node = Node.new

    assert_equal "plop", node.data
  end

  def test_next_node
    node = Node.new

    assert_nil node.next_node
  end

end
