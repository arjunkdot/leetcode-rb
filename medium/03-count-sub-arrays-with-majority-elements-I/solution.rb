# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def count_majority_subarrays(nums, target)
  total = 0

  nums.each_with_index do |_, left|
    count = 0
    nums[left..].each_with_index do |num, right|
      count += 1 if num == target
      total += 1 if count > (right + 1) / 2
    end
  end

  total
end
