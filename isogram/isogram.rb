class Isogram
  def self.isogram?(input)
    sanitized = input.downcase.delete("^a-z")
    sanitized.length == sanitized.chars.uniq.size
  end
end