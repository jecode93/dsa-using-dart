main() {
  /*
      Dart defines List as an abstract class with methods for accessing and modifying the
    elements of the collection by index. Since Dart is platform-independent, how List is
    implemented under the hood depends on the underlying platform, whether that’s
    the Dart VM, or Dart compiled to JavaScript for the web, or native code running
    directly on your computer. 

    List, like most other Dart collections, is an Iterable. This means that you can step
    through the elements sequentially. All iterables have a length getter that returns
    the number of elements in the collection. While this could take O(n) time for
    iterables that need to count every element, List will efficiently return length in
    O(1) time.

    Dart lists can also be growable or fixed-length. When you specify a fixed length for
    the list, Dart can be more efficient about the space it allocates. However, you won’t
    be able to add or remove elements anymore as you could in a growable list.
    As with any data structure, there are certain notable traits that you should be aware
    of. The first of these is the notion of order.
  */
  final people = ['Pablo', 'Manda', 'Megan'];

  print(people);

  /*
    ORDER
    
    Elements in a list are explicitly ordered. Using the above people list as an example,
    'Pablo' comes before 'Manda'.
    All elements in a list have a corresponding zero-based integer index. For example,
    people has three indices, one corresponding to each element. You can retrieve the
    value of an element in the list by writing the following:
  */

  print(people[0]);
  print(people[1]);
  print(people[2]);

  /*
    Order is defined by the List data structure and should not be taken for granted.
    Some data structures, such as Map, have a weaker concept of order.
  */

  //LIST PERFORMANCE
/*
    Aside from being a random-access collection, other areas of performance will be of
    interest to you as a developer. Particularly, how well or poorly does the data
    structure fare when the amount of data it contains needs to grow? For lists, this
    varies in two aspects.

*/

  //Insertion Location

  /*
    The first aspect is where you choose to insert the new element inside the list. The
    most efficient scenario for adding an element to a list is to add it at the end of the
    list:
*/
  people.add('Edith');
  print(people);

  /*Inserting 'Edith' using the add method will place the string at the end of the list.
This is an amortized constant-time operation, meaning the time it takes to
perform this operation on average stays the same no matter how large the list
becomes. Since Dart lists are backed by a buffer, if you keep adding elements, the
buffer will fill up every so often. Then Dart will have to spend some extra time
allocating more space for the buffer. That doesn’t happen very often, though, so the
“amortized” part of amortized constant-time means that the occasional complexity
bump gets averaged out over time and so the operation is still considered constanttime.

To help illustrate why the insertion location matters, consider the following analogy.
You’re standing in line for the theater. Someone new comes along to join the lineup.
What’s the easiest place to add people to the lineup? At the end, of course!

If the newcomer tried to insert themselves into the middle of the line, they would
have to convince half the lineup to shuffle back to make room.

And if they were terribly rude, they would try to insert themselves at the head of the
line. This is the worst-case scenario because every single person in the lineup would
need to shuffle back to make room for this new person in front!

This is exactly how the list works. Inserting new elements anywhere aside from the
end of the list will force elements to shuffle backwards to make room for the new
element:

  */

  int index = 0;

  people.insert(index, 'John');
  print(people);

  /* 
      Capacity
    
    The second factor that determines the speed of insertion is the list’s capacity.
    Underneath the hood, Dart lists are allocated with a predetermined amount of space
    for its elements. If you try to add new elements to a list that is already at maximum
    capacity, the list must restructure itself to make room for more elements. This is
    done by copying all the current elements of the list to a new and bigger container in
    memory. However, this comes at a cost. Each element of the list has to be visited and
    copied.
    This means that any insertion, even at the end, could take n steps to complete if a
    copy is made. However, Dart employs a strategy that minimizes the times this
    copying needs to occur. Each time it runs out of storage and needs to copy, it doubles
    the capacity.
    Note: The actual implementation details are determined by where your Dart
    code is running. For example, in the Dart VM, saying the capacity “doubles” is
    generally true, but the specific implementation in the internal VM file
    growable_array.dart is (old_capacity * 2) | 3.
  
  */
}
