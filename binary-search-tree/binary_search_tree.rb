class Bst

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @right = nil
    @left = nil
  end

  def insert(new_data)
    if @data >= new_data
      if @left.nil?
        @left = Bst.new(new_data)
      else
        @left.insert(new_data)
      end
    else
      if @right.nil?
        @right = Bst.new(new_data)
      else
        @right.insert(new_data)
      end
    end
  end

  def each &block
    @left.each(&block) unless @left.nil?
    yield(@data)
    @right.each(&block) unless @right.nil?
  end

end
