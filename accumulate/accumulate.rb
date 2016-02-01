module Accumulate

  refine Array do
    def accumulate(&block)
      mapped = []
      each{ |n| mapped.push block.call(n) }
      mapped
    end
  end
  
end
