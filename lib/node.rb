class Node

  attr_reader :data
  attr_accessor :next_node

  def initialize(data = "plop")
    @data = data
    @next_node = nil
  end

end
