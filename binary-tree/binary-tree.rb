class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value = nil)
    @value = value
  end

  def insert(insert_value)
    if insert_value <= @value 
      @left.nil? ? @left = Node.new(insert_value) : @left.insert(insert_value)
    else 
      @right.nil? ? @right = Node.new(insert_value) : @right.insert(insert_value)
    end
  end
end
