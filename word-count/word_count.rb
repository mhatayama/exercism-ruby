class Phrase
  WORD_REGEX = /\b[\w']+\b/
  
  def initialize(string)
    @string = string
  end

  def word_count
    @string.downcase.scan(WORD_REGEX)
           .each_with_object(Hash.new(0)) { |w, h| h[w] += 1 }
  end
end
