class Solution {
  bool isPalindrome(String s) {
    int l = 0;
    int r = s.length - 1;
    while (l < r) {
      while (!s[l].isWordOrDigit() && l < r) l++;
      while (!s[r].isWordOrDigit() && l < r) r--;
      if (!s[l++].isEqualString(s[r--])) return false;
    }
    return true;
  }
}

extension PalindromeExtension on String {
  bool isWordOrDigit() {
    int code = codeUnitAt(0);
    final isDigit = '0'.codeUnitAt(0) <= code && '9'.codeUnitAt(0) >= code;
    final isSmallWord = 'a'.codeUnitAt(0) <= code && 'z'.codeUnitAt(0) >= code;
    final isBigWord = 'A'.codeUnitAt(0) <= code && 'Z'.codeUnitAt(0) >= code;
    return isDigit || isSmallWord || isBigWord;
  }

  bool isEqualString(String other) {
    return toLowerCase() == other.toLowerCase();
  }
}

void main(List<String> args) {
  print(Solution().isPalindrome('.a.'));
}
