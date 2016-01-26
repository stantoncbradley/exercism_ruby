class Fixnum
  VERSION = 1
end

module RomanNumerals

  refine Fixnum do

    ROMAN_GRAND = 'M'
    ROMAN_ARRAY = [
      {one:'I',five:'V',ten:'X'},
      {one:'X',five:'L',ten:'C'},
      {one:'C',five:'D',ten:'M'}
    ]

    def to_roman
      numeral_string, remainder = get_thousands(self)
      remainder_array = remainder.to_s.chars.map(&:to_i)
      last_index = remainder_array.length - 1
      remainder_array.each_with_index do |digit,i|
        numeral_string << get_numeral(digit, last_index - i)
      end
      numeral_string
    end

    private

    def get_thousands(number)
      count, remainder = self.divmod(1000)
      return ROMAN_GRAND * count, remainder
    end

    def get_numeral(digit, decimal_place)
      case digit
      when 0
        ''
      when 9
        ROMAN_ARRAY[decimal_place][:one] + ROMAN_ARRAY[decimal_place][:ten]
      when 5...9
        ROMAN_ARRAY[decimal_place][:five] + ROMAN_ARRAY[decimal_place][:one] * (digit - 5)
      when 4
        ROMAN_ARRAY[decimal_place][:one] + ROMAN_ARRAY[decimal_place][:five]
      else
        ROMAN_ARRAY[decimal_place][:one] * digit
      end
    end
  end

end
