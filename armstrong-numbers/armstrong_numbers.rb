class ArmstrongNumbers
  def self.include?(num)
    num == num.digits.sum{|n| n ** num.digits.count}
  end
end