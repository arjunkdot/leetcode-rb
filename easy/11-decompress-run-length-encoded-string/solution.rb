# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  result = []

  (0..nums.size - 1).step(2) do |i|
    count = nums[i]
    item = nums[i + 1]
    count.times { result << item }
  end

  result
end
