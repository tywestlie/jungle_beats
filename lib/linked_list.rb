require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    count = 0
    if @head.nil?
      return nil
    else
      count +1
    end
  end

  def to_string
     head.data
  end

end
