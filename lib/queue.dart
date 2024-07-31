void main() {
  QueueList<int> dlist = QueueList();
  dlist.enqueue(2);
  dlist.enqueue(3);
  dlist.enqueue(4);
  dlist.enqueue(5);
  print(dlist.toString());
  dlist.dequeue();
  dlist.dequeue();
  print(dlist.toString());
  print(dlist.peek);
}

abstract interface class Queue<E> {
  bool? enqueue(E element);
  E? dequeue();
  bool? get isEmpty;
  E? get peek;
}

class QueueList<E> implements Queue<E> {
  final List<E> _queueList = [];
  @override
  dequeue() {
    if (_queueList.isEmpty) return null;
    return _queueList.removeAt(0);
  }

  @override
  bool? enqueue(E element) {
    _queueList.add(element);
    return true;
  }

  @override
  bool? get isEmpty => _queueList.isEmpty;

  @override
  get peek => _queueList.first;

  @override
  String toString() {
    return _queueList.map((e) {
      return _queueList.last != e ? " $e ->" : " $e";
    }).join();
  }
}
