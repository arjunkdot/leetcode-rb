# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

# @param {Array} nums
# @return {Array}
def merge_sort(nums)
    if nums.size > 1
        mid = nums.size / 2
        left = nums[0...mid]
        right = nums[mid..]

        merge_sort(left);
        merge_sort(right)

        i = j = k = 0
        while (i < left.size && j < right.size)
            if left[i] < right[j]
                nums[k] = left[i]
                i += 1
            else 
                nums[k] = right[j]
                j += 1
            end
            k += 1
        end

        while(i < left.size)
            nums[k] = left[i]
            i += 1
            k += 1
        end

        while(j < right.size)
            nums[k] = right[j]
            j += 1
            k += 1
        end
    end
    nums
end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
    tail = dummy = ListNode.new
    nums = [] 
    lists.each do |node|
     while node.is_a?(ListNode)
        nums << node.val
        node = node.next
     end
    end
   
    nums = merge_sort(nums)
    nums.each do |num|
        tail.next = ListNode.new(num)
        tail = tail.next
    end

    dummy.next
end