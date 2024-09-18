//import 'arrays.dart';

import 'linked_list.dart';

void main() {
  // Array array = Array();
  // List<int> arr = [1, 3, 4];
  // List<int> arr2 = [7, 9, 8, 4, 5, 0];

  // // print(array.addAllElement(arr, arr2));
  // // print(arr2);
  // // print(array.searchElement(5, arr2));

  // // print(array.deleteSingleElement(arr, 9));
  // print(array.deleteEntireArray(10, arr + arr2));

  LinkedList<int> list = LinkedList<int>();

  //Adding elements
  list.append(10);
  list.append(20);
  list.append(30);

  list.printAll();

  // Search for an element
  print(list.contains(20));
  print(list.contains(40));

  list.delete(20);

  list.printAll();
}
