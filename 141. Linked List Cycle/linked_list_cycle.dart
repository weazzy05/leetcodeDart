class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool hasCycle(ListNode? head) {
    if (head == null) return false;
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast!.next != null && fast.next!.next != null) {
      slow = slow?.next;
      fast = fast.next!.next!;
      if (fast == slow) {
        return true;
      }
    }
    return false;
  }
}
//https://leetcode.com/problems/linked-list-cycle/