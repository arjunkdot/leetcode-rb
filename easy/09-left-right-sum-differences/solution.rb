# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
  left_sum = 0
  right_sum = nums.sum
  answer = []

  nums.each do |num|
    right_sum -= num
    answer << (left_sum - right_sum).abs
    left_sum += num
  end

  answer
end
