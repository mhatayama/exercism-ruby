class Scrabble
  LETTERS_VALUE = {
    'AEIOULNRST' => 1,
    'DG' => 2,
    'BCMP' => 3,
    'FHVWY' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10
  }

  attr_reader :score

  def initialize(input)
    word = input ? input.upcase.delete("^A-Z") : ''
    @score = word.chars.map {|char|
      LETTERS_VALUE.select {|k, v| k.include?(char)}.values.first
    }.sum
  end

  def self.score(input)
    Scrabble.new(input).score
  end
end