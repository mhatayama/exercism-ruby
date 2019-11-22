class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.size != strand_b.size
    diff_idxs = (0..strand_a.size).to_a.select do |idx|
      strand_a[idx] != strand_b[idx]
    end
    diff_idxs.size
  end
end