class Solution {
  bool isPalindrome(int x) {
    int cur = x;
    int res = 0;
    while (cur > 0) {
      int dig = cur % 10;
      res = res * 10 + dig;
      cur = cur ~/ 10;
    }
    return res == x;
  }
}

// Учитывая целое число x, верните значение true, если x является целым числом-палиндромом.

// Целое число является палиндромом, когда оно читается одинаково как в обратном, так и в прямом направлении.

// Например, 121 - это палиндром, а 123 - нет.

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:

// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:

// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.