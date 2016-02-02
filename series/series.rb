class Series

  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError.new("length can't be longer than string") if length > @string.length
    @string.chars.map(&:to_i).each_cons(length).to_a
  end

end
