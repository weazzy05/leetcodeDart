class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool isPalindrome(ListNode? head) {
    if (head == null) return false;

    ListNode? rev = reverseNode(head);

    ListNode? cur = head;

    while (cur != null && rev != null) {
      if (cur.val != rev.val) {
        return false;
      }
      cur = cur.next;
      rev = rev.next;
    }
    return true;
  }

  ListNode? reverseNode(ListNode head) {
    ListNode? cur = head;
    ListNode? rev = null;
    while (cur != null) {
      var next = cur.next;
      ListNode tempNode = ListNode(cur.val, rev);
      rev = tempNode;
      cur = next;
    }
    return rev;
  }
}

//https://leetcode.com/problems/palindrome-linked-list/submissions/
