# 463. Island Perimeter
# You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally).
# The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).
# The island doesn't have "lakes" (water inside that isn't connected to the water around the island).
# One cell is a square with side length 1.
# The grid is rectangular, width and height don't exceed 100.
# Determine the perimeter of the island.
# [[0,1,0,0],
#  [1,1,1,0],
#  [0,1,0,0],
#  [1,1,0,0]]

# Answer: 16


# @param {Integer[][]} grid
# @return {Integer}

# [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]


class Island
  def initialize(grid)
    @grid = grid
  end
  def perimeter
    grid = @grid
    total = 0
    grid.each_index do |i|
      grid[i].each_index do |j|
        if grid[i][j] == 1
          b= []
          total += 1 if j == 0 || grid[i][j-1] == 0
          total += 1 if i == 0 || grid[i-1][j] == 0
          total += 1 if grid[i][j+1] != 1
          total += 1 if grid[i+1].nil? || grid[i+1][j] == 0
        end
      end
    end
    total
  end

end