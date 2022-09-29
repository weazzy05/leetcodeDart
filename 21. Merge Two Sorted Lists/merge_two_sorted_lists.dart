class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    ListNode? res = ListNode(-1);
    if (list1.val < list2.val) {
      res.next = list1;
      list1 = list1.next;
    } else {
      res.next = list2;
      list2 = list2.next;
    }
    ListNode? cur = res.next;
    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        cur?.next = list1;
        list1 = list1.next;
        cur = cur?.next;
      } else {
        cur?.next = list2;
        list2 = list2.next;
        cur = cur?.next;
      }
    }
    if (list1 != null) {
      cur?.next = list1;
      cur = cur?.next;
    }
    if (list2 != null) {
      cur?.next = list2;
      cur = cur?.next;
    }
    return res.next;
  }
}

// Вам даны заголовки двух отсортированных связанных списков list1 и list2.

// Объедините два списка в один отсортированный список. Список должен быть составлен путем соединения вместе узлов первых двух списков.

// Верните заголовок объединенного связанного списка.

// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]
// Example 2:

// Input: list1 = [], list2 = []
// Output: []
// Example 3:

// Input: list1 = [], list2 = [0]
// Output: [0]