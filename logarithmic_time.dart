//The Big O notation for logarithmic time complexity is O(log n).
main() {
  const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];

  print(betterNaiveContain(450, numbers));
}

bool naiveContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) return true;
  }
  return false;
}

//improving the algorithm
bool betterNaiveContain(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length / 2;

  if (value > list[middleIndex.toInt()]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i.toInt()] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (list[i.toInt()] == value) return true;
    }
  }
  return false;
}
