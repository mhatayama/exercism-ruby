class Grains
  def self.square(num)
    raise new ArgumentError if num < 1 || num > 64
    2 ** (num - 1)
  end

  def self.total
    (1..64).map{ |n| self.square(n) }.sum
    # or 2 ** 64 - 1
  end
end