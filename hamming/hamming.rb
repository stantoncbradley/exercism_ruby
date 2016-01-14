class Hamming

  VERSION = 1
  def self.compute(a, b)
    raise ArgumentError.new("variables must be same length!") unless a.length == b.length
    a.chars.zip(b.chars).count{|x,y| x != y}
  end
end
