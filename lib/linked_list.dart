void main(List<String> arguments) {
  final list1 = LinkedList<int>();
  final list2 = LinkedList<int>();
  list1.push(3);
  list1.push(4);
  list1.push(2);
  list2.push(4);
  list2.push(6);
  list2.push(5);
  print(list1.head);
  Solution().addTwoNumbers(list1.head, list2.head);
}

class Solution {
  Node<int>? addTwoNumbers(Node<int>? l1, Node<int>? l2) {
    
  }
}

class LinkedList<T> extends Iterable {
  Node<T>? head;
  Node<T>? tail;

  void push(T value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  T? pop() {
    final value = head?.value;
    head = head?.next;
    tail ??= head;
    return value;
  }

  void append(T value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  T? removeLast() {
    var currentNode = head;
    if (head?.next == null) {
      return pop();
    }
    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }
    final value = tail?.value;
    tail = currentNode;
    tail?.next = null;
    return value;
  }

  Node<T>? nodeAt(int index) {
    if (isEmpty) {
      return null;
    }
    Node<T>? currentNode = head;
    int currentIndex = 0;
    while (currentIndex < index) {
      currentNode = currentNode!.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<T>? insertAfter(Node<T> node, T value) {
    if (isEmpty) {
      return null;
    }
    if (node == tail) {
      tail!.next = Node(value: value);
    }
    node.next = Node(value: value, next: node.next);
    return node.next;
  }

  T? removeAfter(Node<T> node) {
    var value = node.next?.value;
    if (isEmpty) {
      return null;
    }
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  Iterator get iterator => _LinkedListIterator(this);

  @override
  bool get isEmpty => head == null;

  @override
  String toString() {
    return isEmpty ? "List is Empty" : head.toString();
  }
}

class _LinkedListIterator<T> implements Iterator<T?> {
  final LinkedList<T> _list;
  _LinkedListIterator(this._list);

  Node<T>? _currentNode;

  @override
  T get current => _currentNode!.value;

  bool _firstPass = true;

  @override
  bool moveNext() {
// 1
    if (_list.isEmpty) return false;
// 2
    if (_firstPass) {
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
// 3
    return _currentNode != null;
  }
}

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    return next == null ? "$value" : "$value --> ${next.toString()}";
  }
}

/* CHALLENGES */
//1

void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;
  var stack = StackTrace.current;
  printNodesRecursively(node.next);
  print(stack);
  print(node.value);
}
