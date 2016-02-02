class SumOfMultiples

  DEFAULT_MULTIPLES = [3,5]

  def self.to(number)
    new(*DEFAULT_MULTIPLES).to(number)
  end

  def initialize(*factors)
    @factors = factors
  end

  def to(number)
    (0...number).select{ |n| multiple? n }.inject(:+)
  end

  def multiple?(n)
    @factors.any?{ |f| n % f == 0 }
  end

end
