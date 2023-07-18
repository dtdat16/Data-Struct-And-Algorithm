List<int> insertionSort(List<int> a) {
  if (a.length <= 1) return a;

  for (var j = 1; j < a.length; j++) {
    final key = a[j];

    int i = j - 1;
    while (i >= 0 && a[i] > key) {
      a[i + 1] = a[i];
      i = i - 1;
    }
    a[i + 1] = key;
  }
  return a;
}

void main() {
  final a = [5, 4, 3, 6, 1, 2];

  print("insertion sort: ${insertionSort(a)}");
}
