import '/Volumes/Backup_Emmanuel_macOS/3.Formation/programmation/Flutter/6.Flutter_dart_IMPORTANT_NOTE and Book /DSA_using_Dart/basic_dataStructures/lib/stack.dart';

main() {
  final stack = Stack<int>();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack); // result : 4 3 2 1

  final element = stack.pop();
  final el = stack.pop();

  print('Popped : $element'); // Popped : 4
  print('Popped : $el'); // Popped : 3
}

// Key Points
// • A stack is a LIFO, last-in first-out, data structure.
// • Despite being so simple, the stack is a key data structure for many problems.
// • The only two essential operations for a stack are push for adding elements and
// pop for removing elements.
// • push and pop are both constant-time operations.