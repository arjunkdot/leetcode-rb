# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    map = Hash.new

    # Create a hash map with the last index of each number
    nums.each_with_index do |num, i|
        map[num] = i
    end

    nums.each_with_index do |num, i|
        y = target - num

        # Check if the item that makes up the sum exists, 
        # and make sure their indices are not the same.
        if map.key?(y) && i != map[y]
            return [i, map[y]]
        end 
    end
end

