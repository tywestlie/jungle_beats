require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
    current = @head
  end

  def append(data)
    @head = Node.new(data)
    # if count is > 1
    # create new instance of node with data
    #
  end

  def to_string
    return head.data
  end

end
