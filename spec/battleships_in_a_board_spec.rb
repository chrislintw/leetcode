require_relative '../419.battleships_in_a_board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe '#count_battleships' do
    context 'returns count how many battleships with' do
      it '["X..X","...X","...X"]' do
        arr = [
          ['X', '.', '.', 'X'],
          ['.', '.', '.', 'X'],
          ['.', '.', '.', 'X']
        ]
        expect(board.count_battleships(arr)).to eq(2)
      end
      it '["X..X","....","...X"]' do
        arr = [
          ['X', '.', '.', 'X'],
          ['.', '.', '.', '.'],
          ['.', '.', '.', 'X']
        ]
        expect(board.count_battleships(arr)).to eq(3)
      end
      it '["X..X","...X","...X","...X"]' do
        arr = [
          ['X', '.', '.', 'X'],
          ['.', '.', '.', 'X'],
          ['.', '.', '.', 'X'],
          ['.', '.', '.', 'X']
        ]
        expect(board.count_battleships(arr)).to eq(2)
      end
      it '["X.XX.","....X","X...X","X.X.X","..X.."]' do
        arr = [
          ['X', '.', 'X', 'X', '.'],
          ['.', '.', '.', '.', 'X'],
          ['X', '.', '.', '.', 'X'],
          ['X', '.', 'X', '.', 'X'],
          ['.', '.', 'X', '.', '.']
        ]
        expect(board.count_battleships(arr)).to eq(5)
      end
    end
  end
end
