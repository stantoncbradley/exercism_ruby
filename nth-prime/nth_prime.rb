class Prime

  require 'pry'

  def self.nth(n)
    raise ArgumentError.new('n must be natural number') unless n > 0
    primes = []
    i = 1
    until primes.length == n do
      i += 1
      next if primes.any? { |p| i % p == 0 }
      primes.push i
    end
    primes.pop
  end

end
