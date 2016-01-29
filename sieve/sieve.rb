class Sieve

  def initialize(limit)
    @array = array = (2..limit).to_a
  end

  def primes
    @primes || get_primes
  end

  def get_primes
    ary = @array.dup
    ary.each do |l|
      ary.reject!{|n| n > l && n % l == 0}
    end
    ary
  end

end
