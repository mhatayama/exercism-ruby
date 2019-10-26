class Anagram
  def initialize(word)
    @word = word
  end

  def match(candidates)
    candidates
      .select{ |w| normalize(@word) == normalize(w) }
      .select{ |w| @word.upcase != w.upcase }
  end

  def normalize(word)
    word.upcase.chars.sort
  end
end