class Raindrops
  SOUND_VALUE_PAIRS = %w"Pling Plang Plong".zip([3, 5, 7])

  def self.convert(num)
    output = ""
    SOUND_VALUE_PAIRS.each{|sound, value|
      output += sound if num % value == 0
    }
    output.empty? ? num.to_s : output
  end
end