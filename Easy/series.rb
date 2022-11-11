class Series
  attr_reader :digits
  
  def initialize(digits)
    @digits = digits.split("").map(&:to_i)
  end
  
  def slices(num)
    raise ArgumentError.new if num > digits.length
    
    result = []
    digits.each_with_index do |current_num, idx|
      result << digits[idx, num]
      break if digits[idx + num] == nil
    end
    result
  end
end
