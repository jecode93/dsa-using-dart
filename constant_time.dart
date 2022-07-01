main() {
  checkName(const ['John', 'Dora', 'Bedo']);
}

void checkName(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('No names record!');
  }
}
