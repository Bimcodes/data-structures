import 'node.dart';

class CircularSinglyLinkedList<T> {
  Node<T>? head;
  //Node<T>? tail;

  // Inseting at the end of the list
  void append(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      // if the head is null
      head = newNode;
      newNode.next = head;
    } else {
      // List is not empty, append at the end
      Node<T>? current = head!;
      while (current!.next != head) {
        // This line of code loops through until it gets to the last node i.e a box
        // which contains both the data and the refrence or position to the next node
        current = current.next;
        // At this point it loops and gets to the last node
      }
      // Then the current node is the last node and it is attached to the newnode. The next refrence of the current node is attached to the new node
      current.next = newNode;
      // Since it is a circular linked list, the newNode next ference is attached to the head
      newNode.next = head;
    }
  }

  void prepend(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      head = newNode;
      newNode.next = head;
    } else {
      Node<T>? current = head;
      while (current!.next != head) {
        current = current.next;
      }
      newNode.next = head;
      current.next = newNode;
      head = newNode;
    }
  }

  void printAll() {
    Node<T>? current = head;
    while (current != head) {
      print(current!.data);
      current = current.next;
    }
  }

  bool contains(T value) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == value) {
        return true;
      }
    }
    return false;
  }
}
