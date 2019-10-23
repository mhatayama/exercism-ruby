class Pangram
  ALPHABETS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  def self.pangram?(sentence)
    sentence.upcase.split(//).uniq.sort.join.include?(ALPHABETS)
  end
end