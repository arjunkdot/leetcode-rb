# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  return 0 if nums.empty?

  total = num.sum
  left_sum = 0

  nums.each_with_index do |num, i|
    right_sum = total - left_sum - num
    return i if left_sum == right_sum

    left_sum += num
  end

  -1
end
