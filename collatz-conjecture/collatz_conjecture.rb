class CollatzConjecture
  def self.steps(num)
    raise ArgumentError unless num.positive?
    return 0 if num == 1
    self.steps(num.even? ? num / 2 : num * 3 + 1) + 1
  end
end