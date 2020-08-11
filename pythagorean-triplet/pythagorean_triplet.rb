class Triplet
  def initialize(*nums)
    raise ArgumentError unless nums.size == 3
    @nums = nums
  end

  def sum
    @nums.sum
  end

  def product
    @nums.reduce(:*)
  end

  def pythagorean?
    return false unless @nums[0] < @nums[1] && @nums[1] < @nums[2]
    squares = @nums.sort.map{|n| n**2}
    squares[0, 2].sum == squares[2]
  end

  def self.where(min_factor: 1, max_factor: 1, sum: nil)
    triplets = []
    min_factor.upto(max_factor) do |a|
      (a + 1).upto(max_factor) do |b|
        (b + 1).upto(max_factor) do |c|
          triplet = new(a, b, c)
          next if sum && sum != triplet.sum
          triplets << triplet if triplet.pythagorean?
        end
      end
    end
    triplets
  end
end