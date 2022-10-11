const maxInt32 = 2147483647;
const minInt32 = -2147483648;

const minInt64 = -9223372036854775808;
const maxInt64 = 9223372036854775807;

List<int> quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
  return list;
}

int partition(List<int> list, low, high) {
  if (list.isEmpty) {
    return 0;
  }
  int pivot = list[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, high);
  return i + 1;
}

void swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
