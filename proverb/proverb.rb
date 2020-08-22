class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @final_word = "#{qualifier} #{items.first}".strip
  end

  def to_s
    lines = []
    @items.each_cons(2) do |current_word, next_word|
      lines << "For want of a #{current_word} the #{next_word} was lost."
    end
    lines << "And all for the want of a #{@final_word}."
    lines.join("\n")
  end
end