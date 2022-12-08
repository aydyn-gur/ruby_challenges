class Robot
  LETTERS = ("A".."Z").to_a
  NUMBERS = ("1".."9").to_a
  USED_NAMES = []
  
  def initialize
    @letters = []
    @numbers = []
    reset
  end
  
  def name
    return @generated_name unless @generated_name.empty?
    
    loop do
      reset
      2.times {@generated_name << @letters.pop}
      3.times {@generated_name << @numbers.pop}
      break unless USED_NAMES.include?(@generated_name)
    end
    
    USED_NAMES << @generated_name
    @generated_name
  end
  
  def reset
    LETTERS.each { |letter| @letters << letter}
    NUMBERS.each { |number| @numbers << number}
    @letters.shuffle!
    @numbers.shuffle!
    @generated_name = ''
  end
end
