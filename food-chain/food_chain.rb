class FoodChain
  VERSION = 2

  ANIMALS = {
    "spider" => "It wriggled and jiggled and tickled inside her.\n",
    "bird" => "How absurd to swallow a bird!\n",
    "cat" => "Imagine that, to swallow a cat!\n",
    "dog" => "What a hog, to swallow a dog!\n",
    "goat" => "Just opened her throat and swallowed a goat!\n",
    "cow" => "I don't know how she swallowed a cow!\n",
  }

  def self.song
    previous_animal = "fly"
    array = []

    song = first_line("fly")
    song << fly_line

    ANIMALS.each do |k,v|
      song << first_line(k)
      song << v
      optional_phrase = k == "bird" ? " that wriggled and jiggled and tickled inside her" : nil
      array.push(why(k, previous_animal, optional_phrase))
      previous_animal = k
      array.reverse.each { |i| song << i }
      song << fly_line
    end

    song << first_line("horse")
    song << end_line
    song
  end

  def self.first_line(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def self.fly_line
    "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
  end

  def self.why(first_animal, second_animal,optional_phrase=nil)
    "She swallowed the #{first_animal} to catch the #{second_animal}#{optional_phrase}.\n"
  end

  def self.end_line
    "She's dead, of course!\n"
  end


end

FoodChain.song
