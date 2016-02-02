class PhoneNumber

  INVALID = '0' * 10

  attr_reader :number

  def initialize raw
    @number = sanitize raw
  end

  def area_code
    number[0,3]
  end

  def local_number
    "#{number[3,3]}-#{number[6,4]}"
  end

  def to_s
    "(#{area_code}) #{local_number}"
  end

  private

  def sanitize raw
    return INVALID if raw.match(/[a-zA-Z]/)
    number = raw.gsub(/\D/, '')
    number[0] = '' if number.length == 11 && number[0] == '1'
    number.length == 10 ? number : INVALID
  end

end
