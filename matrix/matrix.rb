class Matrix
  def initialize(string)
    @matrix = extract(string)
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

  private
  def extract(string)
    string.lines.map{|l| l.split().map(&:to_i)}
  end
end