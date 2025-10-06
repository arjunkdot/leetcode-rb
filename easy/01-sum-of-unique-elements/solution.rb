# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
   return nums.select { |num| nums.index(num) === nums.rindex(num) }.reduce(0) { |sum, num| sum += num}
end
