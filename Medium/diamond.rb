=begin
Input - Single string
Output - Diamond made up of strings going to letter

Rules - First and last row include one A
        Every row except for A has 2 letters
        Every row after b has an additional 2 spaces between letters
        Every row has the same width

Data - Array


=end

class Diamond
  def self.make_diamond(letter)
    array = ('A'..letter).to_a
    diamond_array = first_half(array)

    reversed_diamond_array = diamond_array.reverse
    reversed_diamond_array.shift
    (diamond_array + reversed_diamond_array).join("\n") + "\n"
  end
  
  class << self
    private
  
    def first_half(array)
      spaces = 1
      width = array.size + (array.size - 1) # Adds length of array with its index to achieve desired length
      diamond_array = []
      
      array.each do |current_letter|
        if current_letter == 'A'
          diamond_array << current_letter.center(width)
        else
          diamond_array << "#{current_letter}#{" " * spaces}#{current_letter}".center(width)
          spaces += 2
        end
      end
      diamond_array
    end
  end
end
