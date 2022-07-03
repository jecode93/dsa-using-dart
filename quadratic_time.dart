//The Big O notation for quadratic time is O(n ).
main() {
  printMoreNames(['Dora', 'John', 'Vane', 'Bro', 'Sann', 'Other name']);
}

void printMoreNames(List<String> names) {
  for (final _ in names) {
    for (final name in names) {
      print(name);
    }
  }
}
