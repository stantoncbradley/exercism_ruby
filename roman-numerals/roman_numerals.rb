class Fixnum
  VERSION = 1
  def to_roman
    rn=[
      {one:'I',five:'V',ten:'X'},
      {one:'X',five:'L',ten:'C'},
      {one:'C',five:'D',ten:'M'}
    ]

    numeral_string = ''
    thousands_count, remainder = self.divmod(1000)
    thousands_count.times { numeral_string << 'M' }

    remainder_string=remainder.to_s
    length=remainder_string.length
    remainder_string.chars.each_with_index do |char,i|
      num = char.to_i
      place=length-(i+1)
      case num
      when 0
        next
      when 9
        numeral_string << rn[place][:one] + rn[place][:ten]
      when 5...9
        numeral_string << rn[place][:five]
        (num-5).times { numeral_string << rn[place][:one] }
      when 4
        numeral_string << rn[place][:one] + rn[place][:five]
      else
        (num).times { numeral_string << rn[place][:one] }
      end
    end
    numeral_string
  end
end
