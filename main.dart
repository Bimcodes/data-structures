//import 'arrays.dart';

import 'dart:collection';

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

  // CircularSinglyLinkedList<int> cList = CircularSinglyLinkedList<int>();

  // cList.append(23);
  // cList.append(-35);
  // cList.append(45);
  // cList.append(22);
  // cList.printAll();

  // List<int>? twoSum(List<int> nums, int target) {
  //   for (int i = 0; i < nums.length; i++) {
  //     for (int j = i + 1; j < nums.length; j++) {
  //       if (nums[i] + nums[j] == target) {
  //         List<int> output = [];
  //         output.add(i);
  //         output.add(j);
  //         return output;
  //       }
  //     }
  //   }
  //   return null;
  // }

  // print(twoSum([3, 2, 4], 6));

  // List<int>? twoSum2(List<int> nums, int target) {
  //   Map<int, int> map = HashMap<int, int>();
  //   for (int i = 0; i < nums.length; i++) {
  //     int curr = nums[i];
  //     // cur + x = target
  //     // x = target - cur
  //     int x = target - curr;
  //     if (map.containsKey(x)) {
  //       return {map[x]!, i}.toList();
  //     }
  //     map[nums[i]] = i;
  //   }
  //   return [];
  // }

  // print(twoSum2([4, -2, 5, 0, 6, 3, 2, 7], 1));
// if (curr == nums[j]) {
  //   nums.remove(nums[j]);
  //   newList.add(nums[i]);
  //   print(newList);

  // }

  //for (int j = 0; j < nums.length; j++) {
  //   List newList = [];
  //   print(nums[i]);

  // }
  // int removeDuplicate(List<int> nums) {
  //   List<int> newList = [];
  //   for (int i = 0; i < nums.length; i++) {
  //     // int curr = nums[i];

  //     if (i == 0 || nums[i] != nums[i - 1]) {
  //       //nums.remove(nums[i + 1]);
  //       newList.add(nums[i]);
  //     }
  //     print(newList);
  //   }
  //   return newList.length;
  // }

  // print(removeDuplicate([1, 1, 2]));

  int? minSubArray(List<int> nums, int p) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
    }
    int mod = sum % p;
    if (mod == 0) {
      return -1;
    }
    Map<int, int> prefixModIndex = {};
    prefixModIndex[0] = -1;
    int prefixSum = 0;
    int minLength = nums.length;

    for (int i = 0; i < nums.length; i++) {
      prefixSum = (prefixSum + nums[i]) % p;

      int targetMod = (prefixSum - mod + p) % p;
      if (prefixModIndex.containsKey(targetMod)) {
        minLength = i - prefixModIndex[targetMod]! < minLength
            ? i - prefixModIndex[targetMod]!
            : minLength;
      }
      prefixModIndex[prefixSum] = i;
    }
    return  minLength == nums.length ? -1 : minLength;
  }

  print(minSubArray([1,2,3], 3));
}
