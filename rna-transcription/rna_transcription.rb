class Complement
  MAPS = {"C" => "G", "G" => "C", "T" => "A", "A" => "U" }
  def self.of_dna(value)
    value.split(//).map{|v| MAPS[v] || v }.join("")
  end
end