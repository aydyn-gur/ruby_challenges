class Anagram
  def initialize(original_word)
    @original_word = original_word
  end
  
  def match(array)
    anagrams = []
    
    array.each do |word|
      next if @original_word.downcase == word.downcase
      anagrams << word if sorted(@original_word) == sorted(word)
    end
    anagrams
  end
  
  private
  
  def sorted(string)
    string.downcase.chars.sort.join
  end
end
