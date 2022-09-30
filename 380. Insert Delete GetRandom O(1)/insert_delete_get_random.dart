import 'dart:math';

class RandomizedSet {
  List<int> list = [];

  Map<int, int> map = {};

  RandomizedSet() {
    list = [];
    map = {};
  }

  bool insert(int val) {
    if (map.containsKey(val)) {
      return false;
    }
    list.add(val);
    map[val] = list.length - 1;
    return true;
  }

  bool remove(int val) {
    if (!map.containsKey(val)) {
      return false;
    }
    int newPosLastEl = map[val]!;
    int temp = list[newPosLastEl];
    list[newPosLastEl] = list[list.length - 1];
    list[list.length - 1] = temp;
    map[list[newPosLastEl]] = newPosLastEl;
    map.remove(temp);
    list.removeLast();
    return true;
  }

  int getRandom() {
    int i = Random().nextInt(list.length);
    return list[i];
  }
}

//https://leetcode.com/problems/insert-delete-getrandom-o1/submissions/

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * RandomizedSet obj = RandomizedSet();
 * bool param1 = obj.insert(val);
 * bool param2 = obj.remove(val);
 * int param3 = obj.getRandom();
 */