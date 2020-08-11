class Palindromes
  attr_reader :largest, :smallest

  Result = Struct.new(:value, :factors)

  def initialize(max_factor:, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
    @largest = nil
    @smallest = nil
  end

  def generate
    @largest = Result.new(@min_factor ** 2 - 1, nil)
    @smallest = Result.new(@max_factor ** 2 + 1, nil)

    @min_factor.upto(@max_factor) do |n1|
      n1.upto(@max_factor) do |n2|
        product = n1 * n2
        next unless product.to_s == product.to_s.reverse

        if @largest.value < product
          @largest.value = product
          @largest.factors = [[n1, n2]]
        elsif @largest.value == product
          @largest.factors << [n1, n2]
        end

        if @smallest.value > product
          @smallest.value = product
          @smallest.factors = [[n1, n2]]
        elsif @smallest.value == product
          @smallest.factos << [n1, n2]
        end
      end
    end
  end
end
