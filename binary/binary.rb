class Binary

  VERSION = 1

  def initialize(input)
    raise ArgumentError.new("Not binary string") if input.match(/[^10]/)
    @input=input
  end

  def to_decimal
    @input.reverse.chars.each_with_index.inject(0){|sum,(n,i)| sum += n.to_i * 2**i}
  end

end
