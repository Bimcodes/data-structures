import 'node.dart';

class LinkedList<T> {
  Node<T>? head;

  // Insertng at the end of the list
  void append(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node<T>? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  // Print all elements in the list
  void printAll() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Search for a value
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

  // Delete a value
  void delete(T value) {
    // if the head is null, return
    if (head == value) return;

    // If the head is the one to delete, this just attachs the head as the next
    if (head!.data == value) {
      head = head!.next;
      return;
    }
    
    Node<T>? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
        return;
      }
      current = current.next;
    }
  }
}
