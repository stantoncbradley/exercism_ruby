class Grains

  def self.square(n)
    2 ** (n - 1)
  end

  def self.total
    square(65) - 1
  end

end
