# 463. Island Perimeter
require_relative '../463.island_perimeter.rb'

RSpec.describe Island do
  describe '#perimeter' do
    context 'returns island perimeter' do
      it 'when grid are [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]' do
        grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
        expect(Island.new(grid).perimeter).to(eq(16))
      end
      it 'when grid are [[0,1,0],[1,1,1],[0,1,0]]' do
        grid = [[0,1,0],[1,1,1],[0,1,0]]
        expect(Island.new(grid).perimeter).to(eq(12))
      end
      it 'when grid are [[1,0,0],[1,1,0],[1,0,0]]' do
        grid = [[1,0,0],[1,1,0],[1,0,0]]
        expect(Island.new(grid).perimeter).to(eq(10))
      end
      it 'when grid are [[0,0,0],[0,0,0],[0,0,0]]' do
        grid = [[0,0,0],[0,0,0],[0,0,0]]
        expect(Island.new(grid).perimeter).to(eq(0))
      end
      it 'when grid are [[1,1],[1,1]]' do
        grid = [[1,1],[1,1]]
        expect(Island.new(grid).perimeter).to(eq(8))
      end
      it 'when grid are [[1,1,1],[1,1,1],[1,1,1]]' do
        grid = [[1,1,1],[1,1,1],[1,1,1]]
        expect(Island.new(grid).perimeter).to(eq(12))
      end
      it 'when grid are [[1]]' do
        grid = [[1]]
        expect(Island.new(grid).perimeter).to(eq(4))
      end
      it 'when grid are [[1,1,1,1]]' do
        grid = [[1,1,1,1]]
        expect(Island.new(grid).perimeter).to(eq(10))
      end
      it 'when grid are [[1,0],[1,0],[1,0],[1,0]]' do
        grid = [[1,0],[1,0],[1,0],[1,0]]
        expect(Island.new(grid).perimeter).to(eq(10))
      end
      it 'when grid are [[0,0,0,0][0,1,1,1],[0,1,1,1],[0,1,1,1]]' do
        grid = [[0,0,0,0],[0,1,1,1],[0,1,1,1],[0,1,1,1]]
        expect(Island.new(grid).perimeter).to(eq(12))
      end
    end

  end
end
