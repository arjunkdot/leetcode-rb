# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def count_majority_subarrays(nums, target)
  n = nums.size

  # Transform nums array
  arr = nums.map { |num| num == target ? 1 : -1 }

  # Prefix sum
  prefix = [0]
  arr.each { |num| prefix.push(prefix[-1] + num) }

  # Compress sorted array
  sorted_vals = prefix.uniq.sort
  compressed_hash = sorted_vals.each_with_index.to_h

  # Fenwick Tree (Binay Index Tree)
  @size = sorted_vals.size
  @tree = Array.new(@size + 1, 0)

  def update(i)
    i += 1
    while i <= @size
      @tree[i] += 1
      i += (i & -i)
    end
  end

  def query(i)
    i += 1
    s = 0
    while i.positive?
      s += @tree[i]
      i -= (i & -i)
    end
    s
  end

  # Count pairs (i, j) where prefix[j] > prefix[i]
  res = 0
  prefix.each do |val|
    i = compressed_hash[val]
    res += query(i - 1)
    update(i)
  end

  res
end
