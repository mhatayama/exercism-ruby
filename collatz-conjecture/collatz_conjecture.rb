class CollatzConjecture
  def self.steps(num)
    raise ArgumentError unless num.positive?

    cnt = 0
    while num != 1
      num = num.even? ? num / 2 : num * 3 + 1
      cnt += 1
    end

    cnt
  end
end