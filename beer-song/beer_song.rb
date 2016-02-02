class BeerSong

  VERSION = 2
  
  def verse count
    "#{bottle_count(count).to_s.capitalize} #{bottle(count)} of beer on the wall, " +
    "#{bottle_count(count)} #{bottle(count)} of beer.\n" +
    "#{action(count)}, " +
    "#{bottle_count(count-1)} #{bottle(count-1)} of beer on the wall.\n"
  end

  def verses first, last
    first.downto(last).inject(''){ |song,count| song += verse(count) + "\n" }.chop
  end

  def lyrics
    verses(99,0)
  end

  private

  def bottle count
    count == 1 ? "bottle" : "bottles"
  end

  def bottle_count count
    case count
      when 0 then "no more"
      when -1 then 99
      else count
    end
  end

  def amount count
    count == 1 ? "it" : "one"
  end

  def action count
    count > 0 ? "Take #{amount(count)} down and pass it around"
              : "Go to the store and buy some more"
  end

end
