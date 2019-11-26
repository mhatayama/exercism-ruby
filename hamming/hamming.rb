class Hamming
  def self.compute(strand1, strand2)
    new(strand1, strand2).distance
  end

  def distance
    nucleotides.count {|n1, n2| n1 != n2}
  end

  private
  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
    raise SequenceLengthError unless valid?
  end

  def valid?
    @strand1.length == @strand2.length
  end

  def nucleotides
    @strand1.chars.zip(@strand2.chars)
  end
end

class SequenceLengthError < ArgumentError
  def initialize(error_message = "Sequence lengths must be identical")
    super
  end
end