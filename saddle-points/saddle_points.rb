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

  def saddle_points
    all_points = (0...@matrix.size).to_a.product((0...@matrix[0].size).to_a)
    all_points.select do |i, j|
      @matrix[i][j] == rows[i].max && @matrix[i][j] == columns[j].min
    end
  end

  private
  def extract(string)
    string.lines.map{|l| l.split().map(&:to_i)}
  end
end