class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    @string.downcase.split(/\W?[^\w']+\W?/).delete_if(&:empty?)
           .each_with_object(Hash.new(0)) { |w, h| h[w] += 1 }
  end
end
