class Trinary

  def initialize string
    @number = string.match(/[^012]/) ? [0] : string.chars.map(&:to_i)
  end

  def to_decimal
    @number.reverse.each_with_index.inject(0){|sum,(c,i)| sum += c * 3**i }
  end

end
