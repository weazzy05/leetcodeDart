class Solution {
  String intToRoman(int num) {
    String roman = "";
    int temp = num;
    for (int i = 1; i <= num.toString().length; i++) {
      int a = temp % 10;
      String a1 = "";
      String a2 = "";
      String a3 = "";
      switch (i) {
        case 1:
          a1 = "I";
          a2 = "V";
          a3 = "X";
          break;
        case 2:
          a1 = "X";
          a2 = "L";
          a3 = "C";
          break;
        case 3:
          a1 = "C";
          a2 = "D";
          a3 = "M";
          break;
        default:
          a1 = "C";
          a2 = "D";
          a3 = "M";
      }
      if (i < 4) {
        if (a == 1) {
          roman = a1 + roman;
        } else if (a == 5) {
          roman = a2 + roman;
        } else if (a == 4 || a == 9) {
          roman = "$a1${a == 4 ? a2 : a3}" + roman;
        } else {
          String tempR = "${a > 5 ? a2 : ""}";
          for (int i = 0; i < a % 5; i++) {
            if (a > 5) {
              tempR += a1;
            } else {
              tempR = a1 + tempR;
            }
          }
          roman = tempR + roman;
        }
      } else {
        for (int i = 0; i < a % 5; i++) {
          roman = "M" + roman;
        }
      }
      temp ~/= 10;
    }

    return roman;
  }
}


// Например, 2 записывается как II римской цифрой, просто две единицы складываются вместе. 12 записывается как XII, что означает просто X + II. Число 27 записывается как XXVII, то есть XX + V + II.

// Римские цифры обычно пишутся от наибольшего к наименьшему слева направо. Однако цифра, обозначающая четыре, не является IIII. Вместо этого число четыре записывается как IV. Поскольку единица стоит перед пятеркой, мы вычитаем ее, получая четыре. Тот же принцип применим и к числу девять, которое записывается как IX. Существует шесть случаев, когда используется вычитание:

// I можно поместить перед V (5) и X (10), чтобы получилось 4 и 9.
// X можно поместить перед L (50) и C (100), чтобы получилось 40 и 90.
// C можно поместить перед D (500) и M (1000), чтобы получилось 400 и 900.
// Учитывая целое число, преобразуйте его в римскую цифру.

// Input: num = 3
// Output: "III"
// Explanation: 3 is represented as 3 ones.
// Example 2:

// Input: num = 58
// Output: "LVIII"
// Explanation: L = 50, V = 5, III = 3.
// Example 3:

// Input: num = 1994
// Output: "MCMXCIV"
// Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.