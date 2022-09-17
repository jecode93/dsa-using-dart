void main() {
//   A set is a container that holds unique values. Imagine it being a bag that allows you
// to add items to it but rejects items that have already been added:
  var rmPlayer = {'Vinicius', 'Rodrigo', 'Benzema'};
  rmPlayer.add('Benzema');
  print(rmPlayer);

//   Since sets enforce uniqueness, they lend themselves to a variety of interesting
// applications, such as finding duplicate elements in a collection of values:
  final myList = [1, 2, 3, 4, 5, 6, 7];
  final mySet = <int>{1, 2, 5, 7, 8, 9};
  for (final item in myList) {
    if (mySet.contains(item)) {
      print('mySet already have it.');
    }
    mySet.add(item);
  }
  print(mySet);
}

// Similar to maps, order is generally not an important aspect of sets. That said, Dart’s
// default implementation of Set uses LinkedHashSet, which, unlike HashSet,
// promises to maintain insertion order.
// You won’t use sets nearly as often as lists and maps, but they’re still common enough
// to be an important data structure to keep in your tool belt.
