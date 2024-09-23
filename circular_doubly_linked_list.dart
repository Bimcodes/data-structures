import 'node.dart';

class CircularDoublyLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  // Inserting at the end of the lis
  void append(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      head = newNode;
      newNode.next = head;
    } else {
      Node<T>? current = head!;
      while (current!.next != head) {
        current = current.next;
      }
      tail!.next = newNode;
      newNode.previous = tail;
      tail = newNode;
      newNode.next = head;
    }
  }
}
