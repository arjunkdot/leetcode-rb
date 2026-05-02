# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head_a
# @param {ListNode} head_b
# @return {ListNode}
def get_intersection_node(head_a, head_b)
  temp_a = head_a
  temp_b = head_b

  while temp_a != temp_b
    temp_a = temp_a.nil? ? headB : temp_a.next
    temp_b = temp_b.nil? ? headA : temp_b.next
  end
  tempA
end
