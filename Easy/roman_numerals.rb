class RomanNumeral
  CONVERSION = {
    1000  => 'M',
    900   => 'CM',
    500   => 'D',
    400   => 'CD',
    100   => 'C',
    90    => 'XC',
    50    => 'L',
    40    => 'XL',
    10    => 'X',
    9     => 'IX',
    5     => 'V',
    4     => 'IV',
    1     => 'I'
  }
  
  def initialize(number)
    @number = number
  end
  
  def to_roman
    numerals = []
    loop do 
      CONVERSION.each do |key, _|
        if @number - key >= 0
          numerals << CONVERSION[key]
          @number -= key
          break
        end
      end
      break if @number == 0
    end
    
    numerals.join('')
  end
end
