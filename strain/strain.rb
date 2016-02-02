module Strain

  refine Array do

    def keep
      new = []
      new.tap{ |n| self.each{|i| n << i if yield(i)} }
    end

    def discard
      keep { |val| !yield(val) }
    end

  end

end
