class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = string.lines.map{|l| l.split().map(&:to_i)}
    @columns = @rows.transpose
  end

  def saddle_points
    all_points = (0...@rows.size).to_a.product((0...@columns.size).to_a)
    all_points.select do |i, j|
      @rows[i][j] == @rows[i].max && @rows[i][j] == @columns[j].min
    end
  end
end