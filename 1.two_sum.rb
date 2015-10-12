# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  dict = {}
  nums.each_index do |i|
    need = target - nums[i]
    if dict.include?(nums[i])
      return [dict[nums[i]], i+1]
    else
      dict[need] = i +1
    end
  end
  return dict
end