# Given an 2D board, count how many different battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. You may assume the following rules:
#
# You receive a valid board, made of only battleships or empty slots.
# Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), where N can be of any size.
# At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships.
#
# Example:
# X..X
# ...X
# ...X
# In the above board there are 2 battleships.
# Invalid Example:
# ...X
# XXXX
# ...X
# This is an invalid board that you will not receive - as battleships will always have a cell separating between them.
# Follow up:
# Could you do it in one-pass, using only O(1) extra memory and without modifying the value of the board?

# @param {Character[][]} board
# @return {Integer}


# 先算有幾個X
# 扣掉相連數 等於解 !?


require 'benchmark'

class Board
  def count_battleships(board)
    count = 0
    board.each_index do |i|
      board[i].each_index do |j|
        if board[i][j] == 'X'
          count += 1 if board[i][j+1] != 'X' && (board[i+1].nil? || board[i+1][j] != 'X')
        end
      end
    end
    count
  end
end
n = 10000000000000
Benchmark.bmbm do |x|
  board = Board.new
  arr = [
    ['X', '.', 'X', 'X', '.'],
    ['.', '.', '.', '.', 'X'],
    ['X', '.', '.', '.', 'X'],
    ['X', '.', 'X', '.', 'X'],
    ['.', '.', 'X', '.', '.']
  ]
  x.report { board.count_battleships(arr) }
end