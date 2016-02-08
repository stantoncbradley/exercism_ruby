class Anagram

  def initialize(word)
    @original = word
    @key = get_key(word)
  end

  def match(words)
    words.select{ |word| get_key(word) == @key && word.downcase != @original.downcase }
  end

  private

  def get_key(word)
    word.downcase.chars.sort
  end

end
