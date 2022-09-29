class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    ListNode? curr = head;
    ListNode? next = head;
    while (curr != null && curr.next != null) {
      if (curr.val == curr.next?.val) {
        curr = ListNode(curr.val, curr.next?.next);
        next?.next = curr.next;
      } else {
        curr = curr.next;
        next = next?.next;
      }
    }
    return head;
  }
}

//https://leetcode.com/problems/remove-duplicates-from-sorted-list/