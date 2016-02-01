class SumOfMultiples

  DEFAULT_MULTIPLES = [3,5]

  def initialize *multiples
    @multiples = multiples
  end

  def to number
    self.class.calc_sum(number, @multiples)
  end

  def self.to number
    calc_sum(number, DEFAULT_MULTIPLES)
  end

  private

  def self.calc_sum limit, multiples
    (1...limit).inject(0){ |sum,n| multiples.any?{|m| n % m == 0} ? sum + n : sum }
  end

end
