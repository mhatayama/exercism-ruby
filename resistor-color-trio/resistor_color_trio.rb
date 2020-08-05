class ResistorColorTrio
  COLOR_MAPS = %w[black brown red orange yellow green blue violet grey white]

  def initialize(colors)
    @colors = colors
  end

  def label
    color_indexes = @colors.map{ |color| COLOR_MAPS.index(color) }
    raise ArgumentError unless color_indexes.all?
    num = color_indexes[0..1].join + '0' * color_indexes[2]
    if num.end_with?("000")
      "Resistor value: #{num[0, num.size - 3]} kiloohms"
    else
      "Resistor value: #{num} ohms"
    end
  end
end