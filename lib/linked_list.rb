require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    @head = Node.new(data)
  end

  def to_string
    return head.data
  end
  
end
