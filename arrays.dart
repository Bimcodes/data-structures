class Array {
  addAllElement(List initialArray, List newArray) {
    initialArray.addAll(newArray);
    //arr.addAll([1, 3, 5, 6, 7, 8]);
    initialArray.sort();
    return initialArray;
  }

 String searchElement(int value, List arr, {int? number}) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == value) {
        return 'The value was found at index $i';
      }
    }
    return 'The value $value is not found in the array $arr';
  }
}
