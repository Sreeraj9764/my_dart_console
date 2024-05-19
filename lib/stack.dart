void main(List<String> arguments) {
  Stack stack = Stack<int>();
  //challenge 1
  // List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Stack.of(nums).popUntil((e) {
  //   print(e);
  // });

  //challenge 2
  String text1 = "h((e))llo(world)()";
  String text2 = "(hello world())";
  bool isBalanced(String data) {
    int open = "(".codeUnitAt(0);
    int close = ")".codeUnitAt(0);
    for (int codeunit in data.codeUnits) {
      if (codeunit == open) {
        stack.push(codeunit);
      } else if (codeunit == close) {
        if (stack.isNotEmpty) {
          stack.pop();
        } else {
          return false;
        }
      }
    }
    return !stack.isNotEmpty;
  }

  print(isBalanced(text2));
}

class Stack<E> {
  Stack() : _elements = <E>[];
  final List<E> _elements;
  Stack.of(Iterable<E> items) : _elements = List.of(items);

  List<E> get stackElements => _elements;

  void push(E item) => _elements.add(item);

  E pop() => _elements.removeLast();

  bool get isNotEmpty => _elements.isNotEmpty;

  void popUntil(void Function(E) onPop) {
    while (isNotEmpty) {
      onPop(_elements.last);
      pop();
    }
  }

  @override
  String toString() {
    return "current elemets are: ${_elements.toString()}";
  }
}
