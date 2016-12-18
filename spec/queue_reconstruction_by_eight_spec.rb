# 406. Queue Reconstruction by Height
require_relative '../406.queue_reconstruction_by_eight.rb'

RSpec.describe Queue do

  describe '#reconstruct_queue' do
    let(:queue){ Queue.new }
    context 'reconstruct the queue ' do
      it '[[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]' do
        people = [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
        expect(queue.reconstruct_queue(people)).to eq([[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]])
      end
      it '[[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]' do
        people = [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
        expect(queue.reconstruct_queue(people)).to eq([[5,0],[7,0],[5,2],[6,1],[4,4],[7,1]])
      end
      it '[[7,0],[7,1],[5,0],[6,1],[5,2],[8,0]]' do
        people = [[7,0],[7,1],[5,0],[6,1],[5,2],[8,0]]
        expect(queue.reconstruct_queue(people)).to eq([[5,0], [7,0], [5,2], [6,1], [7,1], [8,0]])
      end
      it '[[6,0],[5,0],[4,0]]' do
        people = [[6,0],[5,0],[4,0]]
        expect(queue.reconstruct_queue(people)).to eq([[4,0], [5,0], [6,0]])
      end
    end
  end
end