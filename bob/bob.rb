module Bob
  def self.hey(remark)
    remark.strip!
    if remark.match?(/[A-Z]/) && !remark.match?(/[a-z]/)
      remark.end_with?('?') ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
    elsif remark.end_with?('?')
      'Sure.'
    else
      remark.empty? ? 'Fine. Be that way!' : 'Whatever.'
    end
  end
end
