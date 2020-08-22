class CollatzConjecture
  def self.steps(num)
    raise ArgumentError unless num.positive?

    steps = 0
    until num == 1
      num = num.even? ? num / 2 : num * 3 + 1
      steps += 1
    end

    steps
  end
end