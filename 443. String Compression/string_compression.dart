class Solution {
  int compress(List<String> chars) {
    int i = 0;
    int replaceIndex = 0;
    while (i < chars.length) {
      String char = chars[i];
      int count = 0;
      while (i < chars.length && char == chars[i]) {
        count++;
        i++;
      }
      chars[replaceIndex++] = char;
      if (count > 1) {
        String countStr = count.toString();
        for (var i = 0; i < countStr.length; i++) {
          chars[replaceIndex++] = countStr[i];
        }
      }
    }
    return replaceIndex;
  }
}
