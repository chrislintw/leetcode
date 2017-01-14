# 448. Find All Numbers Disappeared in an Array
# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

# Find all the elements of [1, n] inclusive that do not appear in this array.

# Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

class Number

  # @param {Integer[]} nums
  # @return {Integer[]}
  # def self.find_disappeared_numbers(nums)
  #   nums.sort!
  #   size = nums.size
  #   size.times do |i|
  #     num = nums.shift

  #     unless num == i+1
  #       nums.push i+1
  #       nums.unshift num if num
  #     end
  #   end
  #   nums
  # end
  # def find_disappeared_numbers(nums)
  #   size = nums.size
  #   nums.sort!.uniq!
  #   size.times do |i|
  #     num = nums.shift
  #     unless num == i + 1
  #       nums.push( i+1 )
  #       nums.unshift num if num
  #     end
  #   end
  #   nums
  # end
  def self.find_disappeared_numbers(nums)
    a = []
    nums.size.times {|i| a.push(i+1) unless nums.index(i+1)}
    a
  end
end