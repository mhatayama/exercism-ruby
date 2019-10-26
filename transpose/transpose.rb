class Transpose
  def self.transpose(input)
    return "" if input.empty?
    lines = input.split("\n")
    (0...maxLength(lines)).map do |i|
      (0...lines.size).map do |j|
        lines[j][i] || (i < maxLength(lines[j..-1]) ? ' ' : nil)
      end.join
    end.join("\n")
  end

  private
  def self.maxLength(lines)
    lines.map(&:size).max
  end
end