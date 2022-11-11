class DNA
  attr_reader :strand
  
  def initialize(strand)
    @strand = strand.chars
  end
  
  def hamming_distance(other_strand)
    smaller_strand = smaller(strand, other_strand.chars)
    count = 0
    smaller_strand.each_with_index do |_, idx|
      count += 1 if strand[idx] != other_strand[idx]
    end
    count
  end
  
  private
  
  def smaller(strand1, strand2)
    if strand1.size < strand2.size
      return strand1
    else
      return strand2
    end
  end
end
