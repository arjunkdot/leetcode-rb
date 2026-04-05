# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def get_middle(head)
  slow = head
  fast = head.next
  while fast&.next
    slow = slow.next
    fast = fast.next.next
  end

  slow
end

# @param {ListNode} left
# @param {ListNode} right
# @return {ListNode}
def merge(left, right)
  tail = dummy = ListNode.new
  while left && right
    if left.val < right.val
      tail.next = left
      left = left.next
    else
      tail.next = right
      right = right.next
    end
    tail = tail.next

    tail.next = left if left
    tail.next = right if right

  end

  dummy.next
end

# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if !head || !head.next

  left = head
  right = get_middle(head)
  temp = right.next
  right.next = nil
  right = temp

  left = sort_list(left)
  right = sort_list(right)

  merge(left, right)
end
