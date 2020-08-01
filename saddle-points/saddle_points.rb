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
    result = []
    0.upto(@matrix.size - 1) do |y|
      0.upto(@matrix[y].size - 1) do |x|
        if @matrix[y][x] == rows[y].max && @matrix[y][x] == columns[x].min
          result << [y, x]
        end
      end
    end
    result
  end

  private
  def extract(string)
    string.lines.map{|l| l.split().map(&:to_i)}
  end
end