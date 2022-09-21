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
