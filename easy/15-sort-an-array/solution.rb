# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
  if nums.size > 1
    mid = nums.size / 2
    left = nums[0...mid]
    right = nums[mid..nums.size]

    sort_array(left)
    sort_array(right)

    i = j = k = 0

    while i < left.size && j < right.size
      if left[i] < right[j]
        nums[k] = left[i]
        i += 1
      else
        nums[k] = right[j]
        j += 1
      end

      k += 1
    end

    while i < left.size
      nums[k] = left[i]
      i += 1
      k += 1
    end

    while j < right.size
      nums[k] = right[j]
      j += 1
      k += 1
    end
  end

  nums
end
