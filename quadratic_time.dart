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
