class Solution {
  List<int> plusOne(List<int> digits) {
    int inMind = 0;
    if (digits[digits.length - 1] == 9) {
      digits[digits.length - 1] = 0;
      inMind = 1;
    } else {
      digits[digits.length - 1] += 1;
    }
    for (int i = digits.length - 2; i >= 0; i--) {
      if (digits[i] == 9 && inMind != 0) {
        digits[i] = 0;
        inMind = 1;
      } else {
        digits[i] = digits[i] + inMind;
        inMind = 0;
      }
    }
    if (inMind == 1) digits.insert(0, 1);
    return digits;
  }
}

///https://leetcode.com/problems/plus-one/