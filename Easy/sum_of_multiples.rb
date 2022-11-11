class SumOfMultiples
  def initialize(*multiples)
    @multiples = (multiples.size > 0) ? multiples : [3, 5]
  end
  
  def self.to(target_num)
    SumOfMultiples.new().to(target_num)
  end
  
  def to(target_num)
    (1...target_num).select do |num|
      @multiples.any? { |multiple| num % multiple == 0 }
    end.sum
  end
end
