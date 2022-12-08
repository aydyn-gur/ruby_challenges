class CustomSet
  attr_reader :element
  
  def initialize(element = [])
    @element = element
  end
  
  def empty?
    element.empty?
  end
  
  def contains?(num)
    element.include?(num)
  end
  
  def subset?(other_set)
    element.all? { |num| other_set.element.include?(num) }
  end
  
  def disjoint?(other_set)
    element.all? { |num| !other_set.element.include?(num) }
  end
  
  def eql?(other_set)
    element.sort.uniq == other_set.element.sort.uniq
  end
  
  def add(num)
    element.include?(num) ? element : element.push(num)
    CustomSet.new(element)
  end
  
  def ==(other_set)
    element == other_set.element
  end
  
  def intersection(other_set)
    matches = []
    
    element.each do |num|
      matches << num if other_set.element.include?(num)
    end
    
    CustomSet.new(matches)
  end
  
  def difference(other_set)
    differences = []
    
    element.each do |num|
      differences << num if !other_set.element.include?(num)
    end
    
    CustomSet.new(differences)
  end
  
  def union(other_set)
    combined = element + other_set.element
    CustomSet.new(combined.sort.uniq)
  end
end
