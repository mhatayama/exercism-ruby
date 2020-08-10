class Nucleotide
  def self.from_dna(strand)
    raise ArgumentError unless strand.match?(/^[ATGC]*$/)
    new(strand)
  end

  def count(type)
    @strand.count(type)
  end

  def histogram
    'ATGC'.chars.map{ |type| [type, count(type)] }.to_h
  end

  private
  def initialize(strand)
    @strand = strand
  end
end