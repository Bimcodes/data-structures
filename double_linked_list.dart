import 'node.dart';

class DoubleLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  // Insertin at the end of the list
  void append(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      // if the head is null
      head = newNode;
      tail = newNode;
    } else {
      // List is not empty, append at the end
      tail!.next = newNode;
      newNode.previous = tail;
      tail = newNode;
    }
  }

  //Inserting at the beginning of the list
  void prepend(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      //if head is empty
      head = newNode;
      tail = newNode;
    } else {
      // List is not empty, add at the begining
      newNode.next = head;
      head!.previous = newNode;
      head = newNode;
    }
  }

  // Print forward from the list from head to tail
  void printForward() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printBackward() {
    Node<T>? current = tail;
    while (current != null) {
      print(current.data);
      current = current.previous;
    }
  }

  // search for a value
  bool contains(T value) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == value) {
        print('The vlaue $value matches this $current.data');
        return true;
      }
    }
    return false;
  }
}
