class RecentCounter {
  List<int> pings = [];

  RecentCounter() {}

  int ping(int t) {
    int z = t - 3000;
    pings.add(t);
    int j = binarySearch(pings, z, 0, pings.length - 1);
    return pings.length - j;
  }

  int binarySearch(List<int> arr, int userValue, int min, int max) {
    if (max >= min) {
      int mid = ((max + min) / 2).floor();
      if (userValue == arr[mid]) {
        return mid;
      } else if (userValue > arr[mid]) {
        return binarySearch(arr, userValue, mid + 1, max);
      } else {
        return binarySearch(arr, userValue, min, mid - 1);
      }
    }
    return min;
  }
}
