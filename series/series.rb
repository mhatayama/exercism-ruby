class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(num)
    raise ArgumentError if @digits.length < num
    @digits.chars.each_cons(num).map(&:join)
  end
end
