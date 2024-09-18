class Array {
  String addAllElement(List initialArray, List newArray) {
    initialArray.addAll(newArray);
    //arr.addAll([1, 3, 5, 6, 7, 8]);
    initialArray.sort();
    return initialArray.toString();
  }

  String searchElement(int value, List arr, {int? number}) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == value) {
        return 'The value was found at index $i';
      }
    }
    return 'The value $value is not found in the array $arr';
  }

  String deleteSingleElement(List arr, int value) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == value) {
        arr.remove(value);
        return 'The value was removed at index $i';
      }
    }
    return 'The value $value is not in the array $arr';
  }

  String deleteEntireArray(int value, List arr) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == value) {
        arr.clear();
        return 'Because the value $value was in array $arr, the array was deleted';
      }
    }
    return 'The value $value is not present in the array $arr';
  }
}
