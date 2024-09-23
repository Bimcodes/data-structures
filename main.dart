//import 'arrays.dart';

import 'circular_singly_linked_list.dart';
import 'double_linked_list.dart';
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

//   LinkedList<int> list = LinkedList<int>();

//   //Adding elements
//   list.append(10);
//   list.append(20);
//   list.append(30);

// // Search for an element
//   print(list.contains(20));
//   print(list.contains(40));

  // DoubleLinkedList<int> dList = DoubleLinkedList<int>();

  // dList.append(20);
  // dList.append(25);
  // dList.append(45);

  // //dList.printForward();
  // dList.printBackward();
  // print(dList.contains(60));

  CircularSinglyLinkedList<int> cList = CircularSinglyLinkedList<int>();

  cList.append(23);
  cList.append(-35);
  cList.append(45);
  cList.append(22);
  cList.printAll();
}
