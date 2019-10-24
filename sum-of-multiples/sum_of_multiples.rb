class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    1.upto(num - 1).select do |n|
      (@multiples.select { |m| (n % m).zero? }).any?
    end.sum
  end
end
