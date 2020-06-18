class Raindrops
  def self.convert(num)
    output = ""
    %w"Pling Plang Plong".zip([3, 5, 7]).each{|sound, value|
      output += sound if num % value == 0
    }
    # output += "Pling" if num % 3 == 0
    # output += "Plang" if num % 5 == 0
    # output += "Plong" if num % 7 == 0
    output.empty? ? num.to_s : output
  end
end