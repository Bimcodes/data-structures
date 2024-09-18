import 'arrays.dart';

void main() {
  Array array = Array();
  List<int> arr = [1, 3, 4];
  List<int> arr2 = [7, 9, 8, 4, 5, 0];
  print(array.addAllElement(arr, arr2));
  print(arr2);
  print(array.searchElement(5, arr2));

  print("Hello World!");
}
