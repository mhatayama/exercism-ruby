class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(num)
    raise ArgumentError if @digits.length < num
    0.upto(@digits.length - num).map{|i| @digits[i, num]}
  end
end