class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @qualifier = qualifier
  end

  def to_s
    lines = []
    @items.each_cons(2) do |current_word, next_word|
      lines << "For want of a #{current_word} the #{next_word} was lost."
    end
    final = @qualifier ? "#{@qualifier} #{@items.first}" : "#{@items.first}" 
    lines << "And all for the want of a #{final}."
    lines.join("\n")
  end
end