class Robot

  VERSION = 1

  @@names = []

  attr_reader :name

  def initialize
    generate_name
  end

  def reset
    generate_name
  end

  private

  def generate_name
    begin
      new_name = random_letters(2) + random_digits(3)
    end while @@names.include? new_name
    @@names << new_name
    @name = new_name
  end

  def random_letters(count)
    random_string(('A'..'Z').to_a, count)
  end

  def random_digits(count)
    random_string(('0'..'9').to_a, count)
  end

  def random_string(array, count)
    array.shuffle.pop(count).join
  end
end
