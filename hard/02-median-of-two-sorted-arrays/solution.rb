# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def sort(nums)
  if nums.size > 1
    mid = nums.size / 2
    left = nums[...mid]
    right = nums[mid..]

    sort(left)
    sort(right)

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

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Interger[]}
def merge(nums1, nums2)
  merged = []
  nums1.each { |num| merged << num }
  nums2.each { |num| merged << num }
  merged
end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  arr = sort(merge(nums1, nums2))
  is_odd = arr.size.odd?
  mid = arr.size / 2

  is_odd ? arr[mid] : (arr[mid - 1] + arr[mid]) / 2.0
end
