class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    triangle? && @sides.uniq.size == 1
  end

  def isosceles?
    triangle? && @sides.uniq.size <= 2
  end

  def scalene?
    triangle? && !isosceles?
  end

  def triangle?
    @sides.min(2).sum  > @sides.max
  end
end