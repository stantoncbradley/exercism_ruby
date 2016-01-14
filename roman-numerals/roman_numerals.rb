class RomanNumerals

  require 'pry'

  NUMERALS = [
    ['M', 1000],
    ['D', 500],
    ['C', 100],
    ['L', 50],
    ['X', 10],
    ['V', 5],
    ['I', 1]
  ]

  def self.numeral_counts(number)
    counts = []
    NUMERALS.each do |k,v|
      v, number = number.divmod(v)
      counts.push([k, v])
    end
    counts
  end

  Fixnum.class_eval do
    def to_roman
      numeral_counts = RomanNumerals.numeral_counts(self)
      string = ''
      numeral_counts.each_with_index do |hash,ind|
        if hash[1] == 4
          string << (hash[0].to_s + numeral_counts[ind-1][0])
        else
          hash[1].times {string << hash[0].to_s}
        end
      end
      string
    end

  end

end
