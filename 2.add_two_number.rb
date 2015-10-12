# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
class NilClass
  def val
    0
  end
  def next
    nil
  end
end
def add_two_numbers(l1, l2)
  r, n1, n2 = ListNode.new(0), l1, l2
  nr = r
  begin
    nr.val = (nr.val + n1.val + n2.val)
    n1, n2 = n1.next, n2.next
    nr.next = ListNode.new(0) if (n1 || n2)
    if nr.val > 9
      nr.next = ListNode.new(1)
      nr.val = nr.val % 10
    end
    nr = nr.next
  end while (n1 || n2)
  r
end