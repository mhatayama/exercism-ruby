class ResistorColorDuo
  COLOR_MAPS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    colors[0..1].map{|color| COLOR_MAPS.index(color)}.join.to_i
  end
end