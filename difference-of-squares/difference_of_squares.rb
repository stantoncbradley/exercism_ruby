class Squares
  VERSION = 1
  attr_accessor :sum_of_squares, :square_of_sums

  def initialize(n)
    @square_of_sums = (1..n).inject(:+) ** 2
    @sum_of_squares = (1..n).inject{|memo,i| memo += i ** 2}
  end

  def difference
    @square_of_sums - @sum_of_squares
  end

end
