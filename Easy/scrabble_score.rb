=begin
Input - String
Output - Integer

Data - Hash to store the letters and their corresponding scores

Rules - 
If no string or empty string is provided output 0
Should not be case sensitive

Algo - 
Create hash that stores an array of letters as key and score as value

Constructor method should take an argument and save it for later

Score method should take the string and split it into an array
Initialize empty score variable
Iterate over the array and see where that same letter is in the hash
Add the value of that letter to score variable
return score variable after iteration
=end

class Scrabble
  TILES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']  => 1,
    ['D', 'G']                                          => 2,
    ['B', 'C', 'M', 'P']                                => 3,
    ['F', 'H', 'V', 'W', 'Y']                           => 4,
    ['K']                                               => 5,
    ['J', 'X']                                          => 8,
    ['Q', 'Z']                                          => 10
  }
  
  def initialize(word)
    @word = word
  end
  
  def score
    return 0 unless @word.is_a?(String)
    seperated_words = @word.chars
    total = 0
    
    seperated_words.each do |letter|
      TILES.each do |key, value|
        total += value if key.include?(letter.upcase)
      end
    end
    total
  end
  
  def self.score(word)
    Scrabble.new(word).score
  end
end
