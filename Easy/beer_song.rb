class BeerSong
  def self.verse(num)
    "#{amount(num).capitalize} of beer on the wall, #{amount(num)} of beer.\n" \
    "#{second_line(num)}, #{amount(num - 1)} of beer on the wall.\n"
  end
  
  def self.verses(verse1, verse2)
    start = verse1
    song = []
    
    while start >= verse2
      song << "#{verse(start)}"
      start -= 1
    end
    
    song.join("\n")
  end
  
  def self.lyrics
    verses(99, 0)
  end
  
  def self.second_line(num)
    case num
      when 0 then "Go to the store and buy some more"
      when 1 then "Take it down and pass it around"
      when (2..99) then "Take one down and pass it around"
    end
  end
    
  def self.amount(num)
    case num
    when -1 then '99 bottles'
    when 0 then 'no more bottles'
    when 1 then '1 bottle'
    when (2..99) then "#{num} bottles"
    end
  end
end
