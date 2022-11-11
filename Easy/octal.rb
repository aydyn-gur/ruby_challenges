class Octal
  def initialize(octal_num)
    @octal_num = octal_num
  end
  
  def to_decimal
    return 0 if @octal_num =~ /[a-z89]/i
    decimal = 0
    
    @octal_num.chars.reverse.each_with_index do |num, idx|
      decimal += num.to_i * (8 ** idx)
    end
    decimal
  end
end
