class School

  VERSION = 1

  def initialize
    @hash = Hash.new{ |h,k| h[k] = [] }
  end

  def add(name, grade)
    @hash[grade].push(name).sort!.dup
  end

  def to_h
    Marshal.load Marshal.dump(@hash.sort.to_h)
  end

  def grade(g)
    @hash[g].dup
  end

end
