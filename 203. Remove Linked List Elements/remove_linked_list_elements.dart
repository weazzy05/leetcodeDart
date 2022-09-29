class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeElements(ListNode? head, int val) {
    ListNode? dumm = ListNode(-1, head);
    var prev = dumm;
    var curr = head;
    while (curr != null) {
      var next = curr.next;
      if (curr.val == val) {
        prev.next = next;
      } else
        prev = curr;
      curr = curr.next;
    }
    return dumm.next;
  }
}

//https://leetcode.com/problems/remove-linked-list-elements/
