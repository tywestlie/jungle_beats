class Node

  attr_reader :data, :next_node

  def initialize(data = "plop")
    @data = data
    @next_node = nil
  end

end
