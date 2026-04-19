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
def delete_duplicates(head)
  seen = {}

  dummy = ListNode.new
  dummy.next = head

  while head&.next
    seen[head.val] = true
    while head&.next && seen.include?(head.next.val)
      temp = head.next.next
      head.next.next = nil
      head.next = temp
    end
    head = head.next
  end

  dummy.next
end
