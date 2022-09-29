import 'dart:math';

class Solution {
  int reverse(int x) {
    int z = x;
    int lenth = 0;
    int res = 0;
    if (z > 0) {
      int y = 0;
      while (z > 0) {
        lenth++;
        z = z ~/ 10;
      }
      while (x > 0) {
        y = x % 10;
        res = res + y * pow(10, lenth - 1) as int;
        x = x ~/ 10;
        lenth--;
      }
    } else if (z < 0) {
      int y = 0;
      while (z < 0) {
        lenth++;
        z = z ~/ 10;
      }
      while (x < 0) {
        y = x.abs() % 10;
        res = res - y * pow(10, lenth - 1) as int;
        x = x ~/ 10;
        lenth--;
      }
    }
    if (res > pow(2, 31) - 1 || res < pow(-2, 31)) return 0;
    return res;
  }
}



// Учитывая 32-разрядное целое число x со знаком, верните x с перевернутыми цифрами. Если изменение x приводит к выходу значения за пределы 32-разрядного целого диапазона со знаком [-231, 231 - 1], то верните 0.

// Предположим, что среда не позволяет вам хранить 64-разрядные целые числа (со знаком или без знака).

// Input: x = 123
// Output: 321
// Example 2:

// Input: x = -123
// Output: -321
// Example 3:

// Input: x = 120
// Output: 21