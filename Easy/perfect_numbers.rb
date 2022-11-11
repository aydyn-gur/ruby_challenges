=begin
Input - Number
Output - String
Data structure - Array
Rules - 
  Raise StandardError if number is not positive
  Return 'deficient', 'perfect', or 'abundant'

Algo - 
  Create class PerfectNumber
  Define class method classify which takes a number as an argument
    Check to see if the number is positive and if not raise a StandardError
    From 1 up to the target number see if the target number is evenly divisible by the number
      If yes then add it to an array
      If no next number
    After iteration add up all numbers in that array and compare it to the target number
    If they add up to the number exactly return perfect
    If they add up to a lesser number return deficient
    If they add up to a greater number return abundant
=end

class PerfectNumber
  def self.classify(target_num)
    raise StandardError if target_num < 0
    aliquot_sum = 0
    
    1.upto(target_num - 1) do |num|
      aliquot_sum += num if target_num % num == 0
    end
    
    if aliquot_sum == target_num
      'perfect'
    elsif aliquot_sum < target_num
      'deficient'
    elsif aliquot_sum > target_num
      'abundant'
    end
  end
end
