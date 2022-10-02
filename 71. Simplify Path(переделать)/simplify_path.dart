class Solution {
  String simplifyPath(String path) {
    if (path.length == 1 || path.isEmpty) {
      return '/';
    } else {
      String nWithoutSlash = '';
      int length = path.length;
      for (var i = 0; i < length - 1; i++) {
        if (path[i] != '/' || path[i + 1] != '/') {
          nWithoutSlash += path[i];
        }
      }
      if (path[length - 1] != '/') nWithoutSlash += path[length - 1];
      if (nWithoutSlash.isEmpty || nWithoutSlash[0] != '/') {
        nWithoutSlash = '/';
      }
      length = nWithoutSlash.length;
      String nWithoutDote = '';
      for (var i = 0; i < length - 2; i++) {
        if (nWithoutSlash[i] == '/' &&
            nWithoutSlash[i + 1] == '.' &&
            nWithoutSlash[i + 2] == '/') {
          // nWithoutDote += nWithoutSlash[i];
          i++;
        } else {
          nWithoutDote += nWithoutSlash[i];
        }
      }
      if (nWithoutSlash.length >= 2) {
        nWithoutDote += nWithoutSlash.substring(length - 2, length);
        length = nWithoutDote.length;
        if (nWithoutDote[length - 1] == '.' && nWithoutDote[length - 2] == '/')
          nWithoutDote = nWithoutDote.substring(0, length - 2);
        if (nWithoutDote == '') nWithoutDote = '/';
        length = nWithoutDote.length;
      } else {
        nWithoutDote = '/';
      }
      List<String> list = [];
      int l = 0;
      int r = 1;
      for (var i = 0; i < length; i++) {
        if (i != length - 1 && nWithoutDote[r] == '/') {
          final operation = nWithoutDote.substring(l + 1, r);
          if (list.isNotEmpty && operation == '..') {
            list.removeLast();
          } else if (operation != '..') {
            list.add(operation);
          }
          l = r;
        }
        r++;
      }
      final operation = nWithoutDote.substring(l + 1, r - 1);
      if (list.isNotEmpty && operation == '..') {
        list.removeLast();
      } else if (operation != '..') {
        list.add(operation);
      }
      l = r;
      final String slash = '/';
      String ans = list.join('/');

      return slash + ans;
    }
  }
}
//https://leetcode.com/problems/simplify-path/
