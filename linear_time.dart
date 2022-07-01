main() {
  printNames(['Va', 'John', 'Dora']);
}

void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}
