module Bob
  def self.hey(remark)
    return 'Fine. Be that way!' if remark.strip.empty?

    remark.delete!('^A-Za-z?')
    return "Calm down, I know what I'm doing!" if remark.match?(/^[A-Z]+\?$/)
    return 'Whoa, chill out!' if remark.match?(/^[A-Z]+$/)
    return 'Sure.' if remark.match?(/\?$/)

    'Whatever.'
  end
end
