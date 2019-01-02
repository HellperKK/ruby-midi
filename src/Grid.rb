# class helper for handling 2D grid

class Grid
  def initialize(heigh, width)
    @grid = Array.new(heigh){Array.new(width)}
  end
  def [](x, y)
    @grid[y][x]
  end
  def []=(x, y, value)
    @grid[y][x] = value
  end
  def to_s
    @grid.to_s
  end
  def each
    @grid.each{|item| yield(item)}
  end
  def get_line_at(index)
    @grid[index]
  end
  def set_line_at(index, new_line)
    @grid.each_index{|i| @grid[i] = new_line[i]}
  end
  def get_collumn_at(index)
    @grid.map{|i| i[index]}
  end
  def set_collumn_at(index, new_col)
    new_col.each_with_index do |item, ind|
      @grid[ind][index] = item
    end
  end
  def fill(value)
    @grid.each{|i| i.fill(value)}
  end
  def swap!
    temp = []
    0.upto(@grid[0].length - 1) do |index|
      temp << self.get_collumn_at(index)
    end
    @grid = temp
  end
  def reverse!
    @grid.reverse!
  end
end
