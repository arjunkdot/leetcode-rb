# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  prev = ListNode.new
  while node&.next
    node.val = node.next.val
    prev = node
    node = node.next
  end

  prev.next = nil
end
