# 406. Queue Reconstruction by Height
require_relative '../448.find_all_numbers_disappeared_in_an_array.rb'

RSpec.describe Number do

  describe '#find_disappeared_numbers' do
    it '[4,3,2,7,8,2,3,1]' do
      nums = [4,3,2,7,8,2,3,1]
      expect(Number.find_disappeared_numbers(nums)).to eq([5,6])
    end
    it '[1,1]' do
      nums = [1,1]
      expect(Number.find_disappeared_numbers(nums)).to eq([2])
    end
    it '[10,2,5,10,9,1,1,4,3,7]' do
      nums = [10,2,5,10,9,1,1,4,3,7]
      expect(Number.find_disappeared_numbers(nums)).to eq([6,8])
    end
  end
end
