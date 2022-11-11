class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [side1, side2, side3]
    raise ArgumentError unless valid_triangle?
  end
  
  def kind
    case @all_sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    when 3 then 'scalene'
    end
  end
  
  private
  
  def valid_triangle?
    if @side1 + @side2 <= @side3
      return false
    elsif @side1 + @side3 <= @side2
      return false
    elsif @side3 + @side2 <= @side1
      return false
    end
    true
  end
end
