//The Big O notation for constant time is O(1).
main() {
  checkName(['John', 'Dora', 'Bedo']);
}

void checkName(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('No names record!');
  }
}
