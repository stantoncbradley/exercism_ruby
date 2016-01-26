class Phrase

  VERSION = 1

  # http://stackoverflow.com/questions/20525409/what-is-the-ruby-regex-for-including-apostrophes#_=_

  def initialize(string)
    @string = string

  end

  def word_count
    count = Hash.new(0)
    @string.scan(/\w+\'\w+|\w+/).each { |word| count[word.downcase] += 1 }
    count
  end

end
