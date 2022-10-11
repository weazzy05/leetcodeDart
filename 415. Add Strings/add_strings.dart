class Solution {
  String addStrings(String num1, String num2) {
    int n = num1.length - 1;
    int m = num2.length - 1;
    int dolg = 0;
    String res = '';
    while (n >= 0 || m >= 0) {
      int intFirstDigVal = n >= 0
          ? unitCodeSym(num1[n].codeUnits) - unitCodeSym('0'.codeUnits)
          : 0;
      int intSecondDigVal = m >= 0
          ? unitCodeSym(num2[m].codeUnits) - unitCodeSym('0'.codeUnits)
          : 0;

      int sum = intFirstDigVal + intSecondDigVal + dolg;
      res = (sum % 10).toString() + res;
      dolg = sum ~/ 10;
      m--;
      n--;
    }
    if (dolg > 0) {
      res = dolg.toString() + res;
    }
    return res;
  }

  int unitCodeSym(List<int> unitCode) {
    return unitCode.first;
  }
}

//https://leetcode.com/problems/add-strings/submissions/