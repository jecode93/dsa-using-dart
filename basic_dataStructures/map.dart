import 'dart:collection';

void main() {
  Map scores = {'Vinicius': 7, 'Benzema': 6, 'Rodrigo': 6.5};
  scores['Asensio'] = 6;
  scores['Valverde'] = 8;

// Since this is a LinkedHashMap under the hood, the new key-value pair will appear at
// the end of the map:
  print('Result of the main map : $scores');

// Although Map itself doesn’t guarantee an order, the default Dart implementation of
// Map is LinkedHashMap, which, unlike HashMap, promises to maintain the insertion
// order. N.B: Must import the dart:collection to have the HashMap function

  final hashMap = HashMap.of(scores);

  // Now the order has changed since HashMap makes no guarantees about order.
  print('The hashMap result is : ${hashMap}.');

//   Lookup operations are also constant-time. This is significantly faster than searching
// for a particular element in a list, which requires a walk from the beginning of the list
// to the insertion point.
}
