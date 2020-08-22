class Proverb
  def initialize(*items, qualifier: nil)
    @items = items
    @qualifier = qualifier
  end

  def to_s
    lines = []
    (0...@items.size - 1).each do |n|
      lines << "For want of a #{@items[n]} the #{@items[n + 1]} was lost."
    end
    final = @qualifier ? "#{@qualifier} #{@items.first}" : "#{@items.first}" 
    lines << "And all for the want of a #{final}."
    lines.join("\n")
  end
end