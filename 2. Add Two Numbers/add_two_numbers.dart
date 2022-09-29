class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode result = ListNode();
    ListNode? pointer1 = l1!, pointer2 = l2!;
    ListNode currentNode = result;
    int dolg = 0;

    while (pointer1 != null || pointer2 != null) {
      int point1Val = (pointer1 == null) ? 0 : pointer1.val;
      int point2Val = (pointer2 == null) ? 0 : pointer2.val;

      int sum = point1Val + point2Val + dolg;

      dolg = sum ~/ 10;

      currentNode.next = ListNode(sum % 10);

      currentNode = currentNode.next!;

      if (pointer1 != null) {
        pointer1 = pointer1.next;
      }
      if (pointer2 != null) {
        pointer2 = pointer2.next;
      }
    }
    if (dolg > 0) {
      currentNode.next = ListNode(dolg);
    }
    return result.next;
  }
}
// Вам даны два непустых связанных списка, представляющих два неотрицательных целых числа. 
//Цифры хранятся в обратном порядке, и каждый из их узлов содержит одну цифру. 
//Сложите два числа и верните сумму в виде связанного списка.

// Вы можете предположить, что эти два числа не содержат никакого начального 
//нуля, кроме самого числа 0.

// Input: l1 = [2,4,3], l2 = [5,6,4]
// Output: [7,0,8]
// Explanation: 342 + 465 = 807.