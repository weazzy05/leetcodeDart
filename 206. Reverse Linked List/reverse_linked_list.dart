class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    if (head == null) {
      return null;
    }
    var prev = null;

    while (head != null) {
      var next = head.next;
      head.next = prev;
      prev = head;
      head = next;
    }

    return prev;
  }
}

//https://leetcode.com/problems/reverse-linked-list/