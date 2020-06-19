class Raindrops
  SOUND_VALUE_PAIRS = {"Pling" => 3, "Plang" => 5, "Plong" => 7}

  def self.convert(num)
    output = ""
    SOUND_VALUE_PAIRS.each{|sound, value|
      output += sound if (num % value).zero?
    }
    output.empty? ? num.to_s : output
  end
end