class Luhn
  def self.valid?(number)
    return false if /[^0-9 ]/ =~ number
    
    sanitized = number.delete(' ')
    return false if sanitized.length < 2

    sum = sanitized.reverse.chars
        .map(&:to_i)
        .map.with_index{|n, i| i.even? ? n : n * 2}
        .map{|n| n > 9 ? n - 9 : n}
        .sum
    (sum % 10).zero?
  end
end