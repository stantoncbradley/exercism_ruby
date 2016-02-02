module Strain

  refine Array do

    def keep &block
      filter_on_condition true, &block
    end

    def discard &block
      filter_on_condition false, &block
    end

    def filter_on_condition condition, &block
      new = []
      new.tap{ |n| self.each{ |i| n << i if yield(i) == condition } }
    end

  end
end
