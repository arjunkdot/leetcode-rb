# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def distinct_difference_array(nums)
  left_set = Set.new
  result = []

  nums.each_with_index do |num, i|
    right_set = nums.slice(i + 1..-1).to_set
    left_set.add(num)
    result << left_set.size - right_set.size
  end

  result
end
