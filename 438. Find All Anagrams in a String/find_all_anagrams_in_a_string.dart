class Solution {
  List<int> findAnagrams(String s, String p) {
    List<int> res = [];
    List<int> listP = List<int>.generate(26, (i) => 0);
    List<int> listS = List<int>.generate(26, (i) => 0);
    if (p.length > s.length) return [];
    for (int i = 0; i < p.length; i++) {
      listP[unitCodeSym(p[i].codeUnits) - unitCodeSym('a'.codeUnits)]++;
    }
    int l = 0;
    int r = 0;
    while (r < p.length) {
      listS[unitCodeSym(s[r++].codeUnits) - unitCodeSym('a'.codeUnits)]++;
    }
    while (r < s.length) {
      if (equalSymbolList(listS, listP)) {
        res.add(l);
      }
      listS[unitCodeSym(s[r++].codeUnits) - unitCodeSym('a'.codeUnits)]++;
      listS[unitCodeSym(s[l++].codeUnits) - unitCodeSym('a'.codeUnits)]--;
    }
    if (equalSymbolList(listS, listP)) {
      res.add(l);
    }
    return res;
  }

  int unitCodeSym(List<int> unitCode) {
    return unitCode.first;
  }

  bool equalSymbolList(List<int> n1, List<int> n2) {
    for (var i = 0; i < 26; i++) {
      if (n1[i] != n2[i]) return false;
    }
    return true;
  }
}
