require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data, current = @head)
    if @head.nil?
      @head = Node.new(data)
    elsif current.next_node.nil?
      current.next_node = Node.new(data)
    else current = current.next_node
      append(data, current)
    end
  end

  def prepend(data)
    old_head = @head
    @head = Node.new(data)
    @head.next_node = old_head
  end

  def insert(position, data)
    current = @head
    (position - 1).times do
      current = current.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def count
    if @head.nil?
      return nil
    elsif
      current = @head
      counter = 1
     until current.next_node.nil?
       current = current.next_node
       counter += 1
     end
   end
     counter
  end

  def to_string
    current = @head
    sentence =  "#{current.data}"
      (count - 1).times do
        current = current.next_node
        sentence.concat(" #{current.data}")
      end
    sentence
  end

end
