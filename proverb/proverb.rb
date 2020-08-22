class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @final_word = "#{qualifier} #{items.first}".strip
  end

  def to_s
    @items.each_cons(2).map do |current_word, next_word|
      "For want of a #{current_word} the #{next_word} was lost."
    end.append("And all for the want of a #{@final_word}.").join("\n")
  end
end
