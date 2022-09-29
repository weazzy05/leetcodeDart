class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    int size = getSize(head);
    if (size == 1) return null;
    int index = size - n;
    int count = 0;
    ListNode? curr = head;
    if (index == 0) {
      head = head?.next;
      return head;
    }
    while (count + 1 < index && index != 1) {
      curr = curr?.next;
      count++;
    }
    curr?.next = curr.next?.next;
    return head;
  }

  int getSize(ListNode? head) {
    ListNode? curr = head;
    int size = 0;
    while (curr != null) {
      size++;
      curr = curr.next;
    }
    return size;
  }
}

// Учитывая заголовок связанного списка, удалите n-й узел из конца списка и верните его заголовок.

// Input: head = [1,2,3,4,5], n = 2
// Output: [1,2,3,5]
// Example 2:

// Input: head = [1], n = 1
// Output: []
// Example 3:

// Input: head = [1,2], n = 1
// Output: [1]