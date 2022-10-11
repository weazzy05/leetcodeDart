import 'dart:math';

class Solution {
  List<int> partitionLabels(String s) {
    List<int> charArray = List.filled(26, -1);
    List<int> res = [];
    for (var i = 0; i < s.length; i++) {
      charArray[unitCodeSym(s[i].codeUnits) - unitCodeSym('a'.codeUnits)] = i;
    }
    int j = 0;
    int l = 0;
    for (var i = 0; i < s.length; i++) {
      j = max(j,
          charArray[unitCodeSym(s[i].codeUnits) - unitCodeSym('a'.codeUnits)]);
      if (i == j) {
        res.add(i - l + 1);
        l = i + 1;
      }
    }
    return res;
  }

  int unitCodeSym(List<int> unitCode) {
    return unitCode.first;
  }
}
