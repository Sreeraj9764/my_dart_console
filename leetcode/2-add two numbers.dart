import 'package:my_dart_console/linked_list.dart';

class Solution {
  static Node<int>? addTwoNumbers(Node<int>? l1, Node<int>? l2) {
    print(l1.toString());
    print(l2.toString());
  }
}

void main(List<String> arguments) {
  final list1 = LinkedList<int>();
  final list2 = LinkedList<int>();
  list1.push(3);
  list1.push(4);
  list1.push(2);
  list2.push(4);
  list2.push(6);
  list2.push(5);
  Solution.addTwoNumbers(list1.head, list2.head);
}
